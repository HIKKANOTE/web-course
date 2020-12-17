<?php
   global $db;
   if (isset($_REQUEST['mailinglistid']))
   {
      $sql = 'DELETE FROM CMS_MAILINGLIST_SUBSCRIBERS WHERE id='.$_REQUEST['mailinglistid'];
      mysql_query($sql, $db) or die(mysql_error());
   }
?>