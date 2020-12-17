<?php
   global $db;
   if (isset($_REQUEST['faqid']) && isset($_REQUEST['pageid']))
   {
      $sql = "SELECT * FROM CMS_FAQ WHERE id = '".$_REQUEST['faqid']."'";
      $result = mysql_query($sql, $db);
      if ($data = mysql_fetch_array($result))
      {
         $faq_index = $data['faq_index'];
         $new_index = $faq_index - 1;
   
         $sql = "UPDATE CMS_FAQ SET faq_index = $faq_index WHERE faq_index = $new_index AND page_id='".$_REQUEST['pageid']."'";
         mysql_query($sql, $db) or die(mysql_error());
         $sql = "UPDATE CMS_FAQ SET faq_index = $new_index WHERE id = '".$_REQUEST['faqid']."'";
         mysql_query($sql, $db) or die(mysql_error());
      }
   }
?>