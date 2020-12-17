<?php
   global $db;

   if (isset($_REQUEST['fieldid']) && isset($_REQUEST['pageid']))
   {
      $sql = "SELECT * FROM CMS_FORM_FIELDS WHERE id = ". $_REQUEST['fieldid'];
      $result = mysql_query($sql, $db);
      if ($data = mysql_fetch_array($result))
      {
         $field_index = $data['field_index'];
         $new_index = $field_index + 1;
   
         $sql = "UPDATE CMS_FORM_FIELDS SET field_index = $field_index WHERE field_index = $new_index AND page_id='". $_REQUEST['pageid']."'";
         mysql_query($sql, $db) or die(mysql_error());
         $sql = "UPDATE CMS_FORM_FIELDS SET field_index = $new_index WHERE id = '". $_REQUEST['fieldid']."'";
         mysql_query($sql, $db) or die(mysql_error());
      }
   }
?>