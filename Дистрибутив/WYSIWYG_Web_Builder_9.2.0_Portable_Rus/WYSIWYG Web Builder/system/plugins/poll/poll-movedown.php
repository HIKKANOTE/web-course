<?php
   global $db;

   if (isset($_REQUEST['pollid']) && isset($_REQUEST['pageid']))
   {
      $sql = "SELECT * FROM CMS_POLL_OPTIONS WHERE id = ". $_REQUEST['pollid'];
      $result = mysql_query($sql, $db);
      if ($data = mysql_fetch_array($result))
      {
         $poll_index = $data['poll_index'];
         $new_index = $poll_index + 1;
   
         $sql = "UPDATE CMS_POLL_OPTIONS SET poll_index = $poll_index WHERE poll_index = $new_index AND page_id='". $_REQUEST['pageid']."'";
         mysql_query($sql, $db) or die(mysql_error());
         $sql = "UPDATE CMS_POLL_OPTIONS SET poll_index = $new_index WHERE id = '". $_REQUEST['pollid']."'";
         mysql_query($sql, $db) or die(mysql_error());
      }
   }
?>