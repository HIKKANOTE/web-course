<?php

$plugin = array(
	'name' => 'Comments',
	'description' => 'Comments',
	'admin' => array(
		'init' => array('function' => 'comments_init'),
		'update' => array('function' => 'comments_update'),
		'tab' => array('name' => 'Comments', 'function' => 'comments_tab')),
	'events' => array('onAfterContent' => 'comments_display_after')
	);

define("MODURATION_MESSAGE", "A new comment has been submitted to the page with id '%ID%'. Please log into the admin area of the site and moderate it.");
define("MODURATION_SUBJECT", "A new comment was posted");
define("COMMENTS_THANKS", "Your comment has been added to the moderation cue. It may be a few hours before your comment appears.");
define("COMMENTS_INVALID_NAME", "&bull; Please enter your name.");
define("COMMENTS_INVALID_EMAIL", "&bull; Please enter a valid email address.");
define("COMMENTS_INVALID_COMMENT", "&bull; Please enter a comment.");
define("COMMENTS_INVALID_CAPTCHA", "&bull; The CAPTCHA wasn't entered correctly: ");
define("COMMENTS_TITLE", "Comments");
define("COMMENTS_ADD", "Add a comment");
define("COMMENTS_EMPTY", "No comments yet");
define("COMMENTS_SAIDAT", " said, at ");
define("COMMENTS_NAME", "Name:");
define("COMMENTS_EMAIL", "Email:");
define("COMMENTS_WEBSITE", "Website:");
define("COMMENTS_MESSAGE", " Message:");
define("COMMENTS_SUBMIT", "Submit comment");
define("COMMENTS_INPUT_WIDTH", 350);

function comments_display_after($id)
{
   global $cms_content, $db;

   $sql = "SELECT * FROM CMS_COMMENTS WHERE page_id='$id'";
   $result = mysql_query($sql, $db);
   $data = mysql_fetch_array($result);
   if (!$data)
      return;

   $comments_enabled = $data['comments_enabled'];
   if ($comments_enabled == 0)
      return;

   $captcha_public_key = $data['captcha_public_key'];
   $captcha_private_key = $data['captcha_private_key'];
   $moderation_enabled = $data['moderation_enabled'];
   $moderation_to = $data['moderation_to'];
   $moderation_from = $data['moderation_from'];

   if ($captcha_public_key != '')
   {
      $recaptchalib = basename(dirname(dirname(__FILE__)));
      $recaptchalib .= "/";
      $recaptchalib .= basename(dirname(__FILE__));
      $recaptchalib .= "/recaptchalib.php";
      require_once($recaptchalib);
   }

   $message = '';
   if (isset($_REQUEST['action']) && $_REQUEST['action'] == 'comments_submit')
   {
      if ($captcha_public_key != '')
      {
         $response = recaptcha_check_answer($captcha_private_key, $_SERVER['REMOTE_ADDR'], $_POST['recaptcha_challenge_field'], $_POST['recaptcha_response_field']);
         if (!$response->is_valid)
         {
            $message .= COMMENTS_INVALID_CAPTCHA;
            $message .= $response->error;
            $message .= "<br>\n";
         }
      }
      if (!isset($_REQUEST['comments-name']) || $_REQUEST['comments-name']=='')
      {
         $message .= COMMENTS_INVALID_NAME."<br>\n";
      }
      if (!isset($_REQUEST['comments-email']) || !preg_match("/^.+@.+\..+$/", $_REQUEST['comments-email']))
      {
         $message .= COMMENTS_INVALID_EMAIL."<br>\n";
      }
      if (!isset($_REQUEST['comments-comment']) || !$_REQUEST['comments-comment'])
      {
         $message .= COMMENTS_INVALID_COMMENT."<br>\n";
      }
      if (!$message) 
      {
         if ($moderation_enabled)
         {
            $status = 0;
            mail($moderation_to, MODURATION_SUBJECT, str_replace('%ID%', $id, MODURATION_MESSAGE), 'From: '.$moderation_from."\nReply-to: ".$moderation_from);
            $message = "</p>".COMMENTS_THANKS."</p>\n";
         }
         else 
         {
            $status = 1;
         }
         $comments_comment = $_REQUEST['comments-comment'];
         $comments_name = $_REQUEST['comments-name'];
         $comments_email = $_REQUEST['comments-email'];
         $comments_website = isset($_REQUEST['comments-website']) ? $_REQUEST['comments-website'] : '';
         if (get_magic_quotes_gpc())
         {
            $comments_comment = stripslashes($comments_comment);
            $comments_name = stripslashes($comments_name);
            $comments_email = stripslashes($comments_email);
            $comments_website = stripslashes($comments_website);
         }
         $comments_comment = mysql_real_escape_string($comments_comment);
         $comments_name = mysql_real_escape_string($comments_name);
         $comments_email = mysql_real_escape_string($comments_email);
         $comments_website = mysql_real_escape_string($comments_website);

         $sql = "INSERT INTO CMS_COMMENTS_ITEMS (`comment`, `author_name`, `author_email`, `author_website`, `create_date`, `status`, `page_id`) VALUES ('$comments_comment', '$comments_name', '$comments_email', '$comments_website', now(), '$status', '$id');";
         mysql_query($sql, $db) or die(mysql_error());
      }
   }

   $cms_content .= "<h3>".COMMENTS_TITLE."</h3>\n";

   $sql = "SELECT * FROM CMS_COMMENTS_ITEMS WHERE status=1 AND page_id='$id' ORDER BY create_date";
   $result = mysql_query($sql, $db);
   $num_rows = mysql_num_rows($result);
   if ($num_rows == 0)
   {
      $cms_content .= "<p>".COMMENTS_EMPTY."</p>\n";
   }
   else 
   {
      while ($data = mysql_fetch_array($result))
      {
         $cms_content .= "<strong>".htmlspecialchars($data['author_name'])."</strong>";
         if ($data['author_website'])
         {
            $cms_content .= ' (<a href="'.htmlspecialchars($data['author_website']).'">'.htmlspecialchars($data['author_website']).'</a>)';
         }
         $cms_content .= '<em>'.COMMENTS_SAIDAT.date('Y-m-d H:i:s', strtotime($data['create_date'])).':</em><br>'.nl2br(htmlspecialchars($data['comment'])).'<br><br>';
      }
   }
   $cms_content .= "<h3>".COMMENTS_ADD."</h3>\n";
   if ($message)
   { 
      $cms_content .= $message;
   }
   $cms_content .= "<form action=\"".MAIN_SCRIPT."\" method=\"post\">\n";
   $cms_content .= "<input name=\"page\" type=\"hidden\" value=\"$id\">\n";
   $cms_content .= "<input name=\"action\" type=\"hidden\" value=\"comments_submit\">\n";
   $cms_content .= "<table>\n<tr><td>".COMMENTS_NAME."</td><td><input class=\"cms_input\" name=\"comments-name\" style=\"width:".COMMENTS_INPUT_WIDTH."px\"></td></tr>\n";
   $cms_content .= "<tr><td>".COMMENTS_EMAIL."</td><td><input class=\"cms_input\" type=\"email\" name=\"comments-email\" style=\"width:".COMMENTS_INPUT_WIDTH."px\"></td></tr>\n";
   $cms_content .= "<tr><td>".COMMENTS_WEBSITE."</td><td><input class=\"cms_input\" name=\"comments-website\" style=\"width:".COMMENTS_INPUT_WIDTH."px\"></td></tr>\n";
   $cms_content .= "<tr><td>".COMMENTS_MESSAGE."</td><td><textarea class=\"cms_textarea\" name=\"comments-comment\" style=\"width:".COMMENTS_INPUT_WIDTH."px\" rows=\"10\"></textarea></td></tr>\n";
   if ($captcha_public_key != '')
   {
      $cms_content .= "<tr><td>&nbsp;</td><td>";
      $cms_content .= recaptcha_get_html($captcha_public_key);
      $cms_content .= "</td></tr>\n";
   }
   $cms_content .= "<tr><td>&nbsp;</td><td><input class=\"cms_button\" name=\"submit\" type=\"submit\" value=\"".COMMENTS_SUBMIT."\"></td></tr>\n";
   $cms_content .= "</table>\n</form>\n";
}

function comments_tab()
{
   global $id, $db;

   $comments_enabled = 0;
   $captcha_public_key = '';
   $captcha_private_key = '';
   $moderation_enabled = 0;
   $moderation_to = 'admin@emailaddress.com';
   $moderation_from = 'do-not-reply@emailaddress.com';
 
   $sql = "SELECT * FROM CMS_COMMENTS WHERE page_id='$id'";
   $result = mysql_query($sql, $db);
   if ($data = mysql_fetch_array($result))
   {
      $comments_enabled = $data['comments_enabled'];
      $captcha_public_key = $data['captcha_public_key'];
      $captcha_private_key = $data['captcha_private_key'];
      $moderation_enabled = $data['moderation_enabled'];
      $moderation_to = $data['moderation_to'];
      $moderation_from = $data['moderation_from'];
   }

   $html = '';
   $html .= "<table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\">\n";
   $html .= "<tr><td style=\"width:10%;white-space:nowrap;\">Enable comments for this page:&nbsp;&nbsp;</td><td><select name=\"comments-enabled\" size=\"1\"><option value=\"0\"";
   if ($comments_enabled == 0)
   {
      $html .= " selected";
   }
   $html .= ">disabled</option><option value=\"1\"";
   if ($comments_enabled == 1)
   {
      $html .= " selected";
   }
   $html .= ">enabled</option></select></td></tr>";
   $html .= "<tr><td>reCAPTCHA public key:</td><td><input name=\"comments-publickey\" style=\"width:100%;\" value=\"$captcha_public_key\"></td></tr>";
   $html .= "<tr><td>reCAPTCHA private key:</td><td><input name=\"comments-privatekey\" style=\"width:100%;\" value=\"$captcha_private_key\"></td></tr>";
   $html .= "<tr><td>Enable moduration:</td><td><select name=\"moderation-enabled\" size=\"1\"><option value=\"0\"";
   if ($moderation_enabled == 0)
   {
      $html .= " selected";
   }
   $html .= ">disabled</option><option value=\"1\"";
   if ($moderation_enabled == 1)
   {
      $html .= " selected";
   }
   $html .= ">enabled</option></select></td></tr>";
   $html .= "<tr><td>Moduration recipient:</td><td><input name=\"moderation-to\" style=\"width:100%;\" value=\"$moderation_to\"></td></tr>";
   $html .= "<tr><td>Moduration from:</td><td><input name=\"moderation-from\" style=\"width:100%;\" value=\"$moderation_from\"></td></tr>";
   $html .= "</table><br>\n";

   $sql = "SELECT * FROM CMS_COMMENTS_ITEMS WHERE page_id='$id' ORDER BY create_date";
   $result = mysql_query($sql, $db);
   $num_rows = mysql_num_rows($result);
   if ($num_rows == 0)
   {
      $html .= '<p>No comments yet.</p>';
   }
   else 
   {
      $plugin_dir = basename(dirname(__FILE__));
      $html .= "<script>\n";
      $html .= "function comments_update_status(id)\n";
      $html .= "{\n";
      $html .= "   var elem = jQuery('#comments-tr'+id).find('td:last-child a').first();\n";
      $html .= "   var status = elem.text();\n";
      $html .= "   if (status == 'Activate')\n";
      $html .= "   {\n";
      $html .= "      jQuery.get('./";
      $html .= MAIN_SCRIPT;
      $html .= "?plugin=";
      $html .= $plugin_dir;
      $html .= "&action=comments-status&comment_status=1&comment_id='+id, function(result)\n";
      $html .= "      {\n";
      $html .= "         elem.text('Deactivate');\n";
      $html .= "      });\n";
      $html .= "   }\n";
      $html .= "   else\n";
      $html .= "   {\n";
      $html .= "      jQuery.get('./";
      $html .= MAIN_SCRIPT;
      $html .= "?plugin=";
      $html .= $plugin_dir;
      $html .= "&action=comments-status&comment_status=0&comment_id='+id, function(result)\n";
      $html .= "      {\n";
      $html .= "         elem.text('Activate');\n";
      $html .= "      });\n";
      $html .= "   }\n";
      $html .= "}\n";
      $html .= "function comments_delete(id)\n";
      $html .= "{\n";
      $html .= "   jQuery.get('./";
      $html .= MAIN_SCRIPT;
      $html .= "?plugin=";
      $html .= $plugin_dir;
      $html .= "&action=comments-delete&comment_id='+id, function(result)\n";
      $html .= "   {\n";
      $html .= "      jQuery('#comments-tr'+id).remove();\n";
      $html .= "   });\n";
      $html .= "}\n";
      $html .= "</script>\n";
      $html .= "<table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\" id=\"comments-table\">\n<tr><th>Name</th><th>Date</th><th>Contact</th><th>Comment</th><th>Action</th></tr>\n";
      while ($data = mysql_fetch_array($result))
      {
         $html .= "<tr id=\"comments-tr";
	 $html .= $data['id'];
         $html .= "\">\n";
	 $html .= "<td>".htmlspecialchars($data['author_name'])."</td>\n";
	 $html .= "<td>".date('Y-m-d H:i:s', strtotime($data['create_date']))."</td>\n";
	 $html .= "<td>";
	 $html .= "<a href=\"mailto:".htmlspecialchars($data['author_email'])."\">".htmlspecialchars($data['author_email'])."</a><br>";
	 if ($data['author_website'])
         {
            $html .= "<a href=\"".htmlspecialchars($data['author_website'])."\">".htmlspecialchars($data['author_website'])."</a>";
         }
	 $html .= "</td>\n";
	 $html .= "<td>".htmlspecialchars($data['comment'])."</td>\n";
         $html .= "<td><a href=\"javascript:comments_update_status(";
	 $html .= $data['id'];
         $html .= ")\">";
	 if ($data['status'])
         {
            $html .= "Deactivate";
         }
 	 else 
         {
            $html .= "Activate";
         }
	 $html .= "</a> | <a href=\"javascript:comments_delete(";
	 $html .= $data['id'];
	 $html .= ")\">Delete</a></td>\n</tr>\n";
      }
      $html .= "</table>\n";
   }
   return $html;
}

function comments_init()
{
   global $authorized, $db;
   if ($authorized)
   {
      $sql = "CREATE TABLE IF NOT EXISTS CMS_COMMENTS (
              id INT UNSIGNED NOT NULL AUTO_INCREMENT,
              comments_enabled int, 
              captcha_public_key TEXT, 
              captcha_private_key TEXT,
              page_id INT, 
              moderation_enabled INT,
              moderation_to TEXT,
              moderation_from TEXT,
              PRIMARY KEY(id));";
      mysql_query($sql, $db) or die(mysql_error());
      $sql = "CREATE TABLE IF NOT EXISTS CMS_COMMENTS_ITEMS (
              id INT UNSIGNED NOT NULL AUTO_INCREMENT,
              comment TEXT, 
              create_date TIMESTAMP, 
              author_name TEXT, 
              author_email TEXT, 
              author_website TEXT, 
              page_id INT, 
              status INT, 
              PRIMARY KEY(id));";
      mysql_query($sql, $db) or die(mysql_error());
   }
}

function comments_update($id)
{
   global $authorized, $db;
   if ($authorized)
   {
      if (isset($_REQUEST['comments-enabled']) && 
          isset($_REQUEST['comments-publickey']) &&
          isset($_REQUEST['comments-privatekey']) &&
          isset($_REQUEST['moderation-enabled']) &&
          isset($_REQUEST['moderation-to']) &&
          isset($_REQUEST['moderation-from']))
      {
         $comments_enabled = intval($_REQUEST['comments-enabled']);
         $captcha_public_key = $_REQUEST['comments-publickey'];
         $captcha_private_key = $_REQUEST['comments-privatekey'];
         $moderation_enabled = intval($_REQUEST['moderation-enabled']);
         $moderation_to = $_REQUEST['moderation-to'];
         $moderation_from = $_REQUEST['moderation-from'];

         if (get_magic_quotes_gpc())
         {
            $captcha_public_key = stripslashes($captcha_public_key);
            $captcha_private_key = stripslashes($captcha_private_key);
            $moderation_to = stripslashes($moderation_to);
            $moderation_from = stripslashes($moderation_from);
         }
         $captcha_public_key = mysql_real_escape_string($captcha_public_key);
         $captcha_private_key = mysql_real_escape_string($captcha_private_key);
         $moderation_to = mysql_real_escape_string($moderation_to);
         $moderation_from = mysql_real_escape_string($moderation_from);

         $sql = "SELECT * FROM CMS_COMMENTS WHERE page_id=".$id;
         $result = mysql_query($sql, $db);
         if (mysql_num_rows($result) == 0)
            $sql = "INSERT INTO CMS_COMMENTS (`comments_enabled`, `captcha_public_key`, `captcha_private_key`, `moderation_enabled`, `moderation_to`, `moderation_from`, `page_id`) VALUES ('$comments_enabled', '$captcha_public_key', '$captcha_private_key', '$moderation_enabled', '$moderation_to', '$moderation_from', '$id');";
         else
            $sql = "UPDATE CMS_COMMENTS SET comments_enabled='$comments_enabled', captcha_public_key='$captcha_public_key', captcha_private_key='$captcha_private_key', moderation_enabled='$moderation_enabled', moderation_to='$moderation_to', moderation_from='$moderation_from' WHERE page_id='$id'";
         mysql_query($sql, $db) or die(mysql_error());
      }
   }
}

?>