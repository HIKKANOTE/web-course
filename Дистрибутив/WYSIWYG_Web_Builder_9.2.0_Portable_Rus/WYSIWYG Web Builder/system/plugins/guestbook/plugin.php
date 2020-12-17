<?php

$plugin = array(
	'name' => 'Guestbook',
	'description' => 'Guestbook',
	'admin' => array(
		'init' => array('function' => 'guestbook_init'),
		'update' => array('function' => 'guestbook_update'),
		'tab' => array('name' => 'Guestbook', 'function' => 'guestbook_tab')
		),
	'events' => array('onAfterContent' => 'guestbook_after_content', 'onPageHeader' => 'guestbook_page_header')
	);

define("GUESTBOOK_TITLE", "Guestbook");
define("GUESTBOOK_SIGN", "Please sign the guestbook:");
define("GUESTBOOK_INVALID_CAPTCHA", "&bull; The CAPTCHA wasn't entered correctly: ");
define("GUESTBOOK_INVALID_NAME", "&bull; Please enter your name.");
define("GUESTBOOK_INVALID_EMAIL", "&bull; Please enter a valid email address.");
define("GUESTBOOK_INVALID_COMMENT", "&bull; Please enter a comment.");
define("GUESTBOOK_NAME", "Name: ");
define("GUESTBOOK_EMAIL", "Email: ");
define("GUESTBOOK_WEBSITE", "Website: ");
define("GUESTBOOK_COMMENTS", " Comments: ");
define("GUESTBOOK_SUBMIT", "Sign guestbook");
define("GUESTBOOK_NEXT_PAGE", "Next page --&gt;");
define("GUESTBOOK_PREV_PAGE", "&lt;-- Previous page");
define("GUESTBOOK_INPUT_WIDTH", 350);

function guestbook_after_content($id)
{
   global $cms_content, $db;

   $sql = "SELECT * FROM CMS_GUESTBOOK WHERE page_id='$id'";
   $result = mysql_query($sql, $db);
   $data = mysql_fetch_array($result);
   if (!$data)
      return;

   $guestbook_enabled = $data['guestbook_enabled'];
   if ($guestbook_enabled == 0)
      return;

   $captcha_public_key = $data['captcha_public_key'];
   $captcha_private_key = $data['captcha_private_key'];
   if ($captcha_public_key != '')
   {
      $recaptchalib = basename(dirname(dirname(__FILE__)));
      $recaptchalib .= "/";
      $recaptchalib .= basename(dirname(__FILE__));
      $recaptchalib .= "/recaptchalib.php";
      require_once($recaptchalib);
   }

   $message = '';
   if (isset($_REQUEST['action']) && $_REQUEST['action'] == 'sign_guestbook')
   {
      if ($captcha_public_key != '')
      {
         $response = recaptcha_check_answer($captcha_private_key, $_SERVER['REMOTE_ADDR'], $_POST['recaptcha_challenge_field'], $_POST['recaptcha_response_field']);
         if (!$response->is_valid)
         {
            $message .= GUESTBOOK_INVALID_CAPTCHA;
            $message .= $response->error;
            $message .= "<br>\n";
         }
      }
      if (!isset($_REQUEST['guestbook-name']) || $_REQUEST['guestbook-name'] =='')
      {
         $message .= GUESTBOOK_INVALID_NAME."<br>\n";
      }
      if (!isset($_REQUEST['guestbook-email']) || !preg_match("/^.+@.+\..+$/", $_REQUEST['guestbook-email']))
      {
         $message .= GUESTBOOK_INVALID_EMAIL."<br>\n";
      }
      if (!isset($_REQUEST['guestbook-comments']) || !$_REQUEST['guestbook-comments'])
      {
         $message .= GUESTBOOK_INVALID_COMMENT."<br>\n";
      }
      if (!$message) 
      {
         $guestbook_comments = $_REQUEST['guestbook-comments'];
         $guestbook_name = $_REQUEST['guestbook-name'];
         $guestbook_email = $_REQUEST['guestbook-email'];
         $guestbook_website = isset($_REQUEST['guestbook-website']) ? $_REQUEST['guestbook-website'] : '';
         if (get_magic_quotes_gpc())
         {
            $guestbook_comments = stripslashes($guestbook_comments);
            $guestbook_name = stripslashes($guestbook_name);
            $guestbook_email = stripslashes($guestbook_email);
            $guestbook_website = stripslashes($guestbook_website);
         }
         $guestbook_comments = mysql_real_escape_string($guestbook_comments);
         $guestbook_name = mysql_real_escape_string($guestbook_name);
         $guestbook_email = mysql_real_escape_string($guestbook_email);
         $guestbook_website = stripslashes($guestbook_website);

         $sql = "INSERT INTO CMS_GUESTBOOK_ITEMS (`guestbook_name`, `guestbook_email`, `guestbook_website`, `guestbook_comments`, `guestbook_date`, `page_id`) VALUES ('$guestbook_name', '$guestbook_email', '$guestbook_website', '$guestbook_comments', now(), '$id');";
         mysql_query($sql, $db) or die(mysql_error());
      }
   }

   $cms_content .= "<h3>".GUESTBOOK_TITLE."</h3>\n";

   if ($message)
   { 
      $cms_content .= $message;
   }

   $offset = 0;
   $guestbook_limit = $data['guestbook_limit'];
   if (isset($_REQUEST['offset']))
   {
      $offset = (int) $_REQUEST['offset'];
   }
   $sql = "SELECT * FROM CMS_GUESTBOOK_ITEMS WHERE page_id='$id' ORDER BY guestbook_date DESC LIMIT $offset,$guestbook_limit";
   $result = mysql_query($sql, $db);
   while ($data = mysql_fetch_array($result))
   {
      $cms_content .= "<div class=\"guestbookitem\">\n";
      $cms_content .= "<div class=\"guestbookdate\">".$data['guestbook_date']."</div>\n";
      $cms_content .= "<div class=\"guestbookname\">".GUESTBOOK_NAME.htmlspecialchars($data['guestbook_name'])."</div>\n";
      $cms_content .= "<div class=\"guestbookemail\">".GUESTBOOK_EMAIL." <a href=\"mailto:".$data['guestbook_email']."\">".$data['guestbook_email']."</a></div>\n";
      $cms_content .= "<div class=\"guestbookurl\">".GUESTBOOK_WEBSITE." <a href=\"".$data['guestbook_website']."\">".$data['guestbook_website']."</a></div>\n";
      $cms_content .= "<div class=\"guestbookcomments\">".GUESTBOOK_COMMENTS.htmlspecialchars($data['guestbook_comments'])."</div>\n";
      $cms_content .= "</div>\n";
   }
   
   $this_page = MAIN_SCRIPT;
   $record_count = 0;
   $prev_page = $offset - $guestbook_limit;
   $next_page = $offset + $guestbook_limit;
    	
   $sql = 'SELECT COUNT(*) FROM CMS_GUESTBOOK';
   $result = mysql_query($sql, $db);
   list($record_count) = mysql_fetch_array($result);
   	
   $cms_content .= "<div class=\"navigation\">";
   if ($offset > 0)
   {
      $cms_content .= "<a href=\"$this_page?page=$id&amp;offset=$prev_page\">".GUESTBOOK_PREV_PAGE."</a> &nbsp;  &nbsp;";
   }
   if ($next_page < $record_count)
   {
      $cms_content .= "<a href=\"$this_page?page=$id&amp;offset=$next_page\">".GUESTBOOK_NEXT_PAGE."</a> &nbsp;  &nbsp;";
   }
   $cms_content .= "</div>";
   $cms_content .= "<h3>".GUESTBOOK_SIGN."</h3>\n";

   $cms_content .= '<form action="'.MAIN_SCRIPT.'" method="post">';
   $cms_content .= '<input name="page" type="hidden" value="'.$id.'">';
   $cms_content .= '<input name="action" type="hidden" value="sign_guestbook">';
   $cms_content .= '<table><tr><td>'.GUESTBOOK_NAME.'</td><td><input class="cms_input" name="guestbook-name" style="width:'.GUESTBOOK_INPUT_WIDTH.'px"></td></tr>';
   $cms_content .= '<tr><td>'.GUESTBOOK_EMAIL.'</td><td><input class="cms_input" type="email" name="guestbook-email" style="width:'.GUESTBOOK_INPUT_WIDTH.'px"></td></tr>';
   $cms_content .= '<tr><td>'.GUESTBOOK_WEBSITE.'</td><td><input class="cms_input" name="guestbook-website" style="width:'.GUESTBOOK_INPUT_WIDTH.'px"></td></tr>';
   $cms_content .= '<tr><td>'.GUESTBOOK_COMMENTS.'</td><td><textarea class="cms_textarea" name="guestbook-comments" style="width:'.GUESTBOOK_INPUT_WIDTH.'px" rows="5"></textarea></td></tr>';
   if ($captcha_public_key != '')
   {
      $cms_content .= "<tr><td>&nbsp;</td><td>";
      $cms_content .= recaptcha_get_html($captcha_public_key);
      $cms_content .= "</td></tr>\n";
   }
   $cms_content .= '<tr><td>&nbsp;</td><td><input class="cms_button" name="submit" type="submit" value="'.GUESTBOOK_SUBMIT.'"></td></tr>';
   $cms_content .= '</table></form>';
}

function guestbook_tab()
{
   global $id, $db, $plugin;

   $guestbook_id = isset($_REQUEST['guestbookid']) ? $_REQUEST['guestbookid'] : -1;
   $guestbook_action = isset($_REQUEST['guestbook-action']) ? $_REQUEST['guestbook-action'] : '';
   $anchor = "#tab-Guestbook";
   $plugin_dir = basename(dirname(__FILE__));
 
   $guestbook_enabled = 0;
   $guestbook_limit = 10;
   $captcha_public_key = '';
   $captcha_private_key = '';

   $html = '';
  
   $sql = "SELECT * FROM CMS_GUESTBOOK WHERE page_id='$id'";
   $result = mysql_query($sql, $db);
   if ($data = mysql_fetch_array($result))
   {
      $guestbook_enabled = $data['guestbook_enabled'];
      $guestbook_limit = $data['guestbook_limit'];
      $captcha_public_key = $data['captcha_public_key'];
      $captcha_private_key = $data['captcha_private_key'];
   }
 
   $html .= "<table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\">\n";
   $html .= "<tr><td>Enable guestbook:</td><td><select name=\"guestbook-enabled\" size=\"1\"><option value=\"0\"";
   if ($guestbook_enabled == 0)
   {
      $html .= " selected";
   }
   $html .= ">disabled</option><option value=\"1\"";
   if ($guestbook_enabled == 1)
   {
      $html .= " selected";
   }
   $html .= ">enabled</option></select></td></tr>";
   $html .= "<tr><td>Items per page:</td><td><input name=\"guestbook-limit\" size=\"4\" value=\"$guestbook_limit\"></td></tr>";
   $html .= "<tr><td>reCAPTCHA public key:</td><td><input name=\"guestbook-publickey\" style=\"width:100%;\" value=\"$captcha_public_key\"></td></tr>";
   $html .= "<tr><td style=\"width:10%;white-space:nowrap;\">reCAPTCHA private key:&nbsp;&nbsp;</td><td><input name=\"guestbook-privatekey\" style=\"width:100%;\" value=\"$captcha_private_key\"></td></tr>";
   $html .= "</table><br>\n";

   $sql = "SELECT * FROM CMS_GUESTBOOK_ITEMS WHERE page_id='$id' ORDER BY guestbook_date DESC";
   $result = mysql_query($sql, $db);
   $num_rows = mysql_num_rows($result);
   if ($num_rows > 0)
   {
      $html .= "<script type=\"text/javascript\">\n";
      $html .= "function guestbook_delete(id)\n";
      $html .= "{\n";
      $html .= "   jQuery.post('./";
      $html .= MAIN_SCRIPT;
      $html .= "?plugin=";
      $html .= $plugin_dir;
      $html .= "', { action: \"guestbook-delete\", guestbookid: id }, function(result)\n";
      $html .= "   {\n";
      $html .= "      window.location.href = '".MAIN_SCRIPT."?action=edit&id=".$id.$anchor."';\n";
      $html .= "      window.location.reload(true);\n";
      $html .= "   });\n";
      $html .= "}\n";
      $html .= "</script>\n";

      $html .= "<table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\">\n<tr><th>Date</th><th>Name</th><th>Comments</th><th>Action</th></tr>\n";

      while ($data = mysql_fetch_array($result))
      {
         $html .= "<tr><td>";
         $html .= date('Y-m-d H:i:s', strtotime($data['guestbook_date']));
         $html .= "</td><td><a href=\"mailto:";
         $html .= $data['guestbook_email'];
         $html .= "\">";
         $html .= htmlspecialchars($data['guestbook_name']);
         $html .= "</a></td><td>";
         $html .= htmlspecialchars($data['guestbook_comments']);
         $html .= "</td><td><a href=\"javascript:guestbook_delete(";
         $html .= $data['id'];
         $html .= ")\">Delete</a></td></tr>\n";
      }
      $html .= "</table>\n";
   }
   return $html;
}

function guestbook_init()
{
   global $authorized, $db;
   if ($authorized)
   {
       $sql = "CREATE TABLE IF NOT EXISTS CMS_GUESTBOOK (
              id INT UNSIGNED NOT NULL AUTO_INCREMENT,
              page_id INT, 
              guestbook_enabled INT, 
              guestbook_limit INT, 
              captcha_public_key TEXT, 
              captcha_private_key TEXT,
              PRIMARY KEY(id));";
      mysql_query($sql, $db) or die(mysql_error());

      $sql = "CREATE TABLE IF NOT EXISTS CMS_GUESTBOOK_ITEMS (
              id INT UNSIGNED NOT NULL AUTO_INCREMENT,
              page_id INT, 
              guestbook_name TEXT,
              guestbook_email TEXT,
              guestbook_website TEXT,
              guestbook_comments TEXT,
              guestbook_date TIMESTAMP,
              PRIMARY KEY(id));";
      mysql_query($sql, $db) or die(mysql_error());
   }
}

function guestbook_update($id)
{
   global $authorized, $db;
   if ($authorized)
   {
      if (isset($_REQUEST['guestbook-enabled']) && 
          isset($_REQUEST['guestbook-limit']) &&
          isset($_REQUEST['guestbook-publickey']) &&
          isset($_REQUEST['guestbook-privatekey']))
      {
         $guestbook_enabled = intval($_REQUEST['guestbook-enabled']);
         $guestbook_limit = intval($_REQUEST['guestbook-limit']);
         $captcha_public_key = $_REQUEST['guestbook-publickey'];
         $captcha_private_key = $_REQUEST['guestbook-privatekey'];
         if (get_magic_quotes_gpc())
         {
            $captcha_public_key = stripslashes($captcha_public_key);
            $captcha_private_key = stripslashes($captcha_private_key);
         }
         $captcha_public_key = mysql_real_escape_string($captcha_public_key);
         $captcha_private_key = mysql_real_escape_string($captcha_private_key);

         $sql = "SELECT * FROM CMS_GUESTBOOK WHERE page_id=".$id;
         $result = mysql_query($sql, $db);
         if (mysql_num_rows($result) == 0)
            $sql = "INSERT INTO CMS_GUESTBOOK (`guestbook_enabled`, `guestbook_limit`, `captcha_public_key`, `captcha_private_key`, `page_id`) VALUES ('$guestbook_enabled', '$guestbook_limit', '$captcha_public_key', '$captcha_private_key', '$id');";
         else
            $sql = "UPDATE CMS_GUESTBOOK SET guestbook_enabled='$guestbook_enabled', guestbook_limit='$guestbook_limit', captcha_public_key='$captcha_public_key', captcha_private_key='$captcha_private_key' WHERE page_id=$id";
         mysql_query($sql, $db) or die(mysql_error());
      }
   }
}

function guestbook_page_header()
{
   global $cms_header;

   $cms_header .= "<link rel=\"stylesheet\" href=\"";
   $cms_header .= basename(dirname(dirname(__FILE__)));
   $cms_header .= "/";
   $cms_header .= basename(dirname(__FILE__));
   $cms_header .= "/guestbook.css\" type=\"text/css\">\n";
}
?>