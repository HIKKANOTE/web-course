<?php
   global $db;
   if (isset($_REQUEST['pollid']))
   {
      $sql = "DELETE FROM CMS_POLL_OPTIONS WHERE id='".$_REQUEST['pollid']."'";
      mysql_query($sql, $db) or die(mysql_error());
   }
?>