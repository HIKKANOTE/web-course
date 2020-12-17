<?php
   global $db;
   if (isset($_REQUEST['guestbookid']))
   {
      $sql = "DELETE FROM CMS_GUESTBOOK_ITEMS WHERE id='".$_REQUEST['guestbookid']."'";
      mysql_query($sql, $db) or die(mysql_error());
   }
?>