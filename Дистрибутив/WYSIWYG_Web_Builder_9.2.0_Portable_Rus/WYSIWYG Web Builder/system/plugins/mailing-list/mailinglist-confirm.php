<?php
   global $db;

   if (isset($_REQUEST['hash']))
   {
      $hash = mysql_real_escape_string($_REQUEST['hash']);
      $sql = "SELECT * FROM CMS_MAILINGLIST_SUBSCRIBERS WHERE mailinglist_hash='$hash'";
      $result = mysql_query($sql, $db);
      if (mysql_num_rows($result) != 0)
      {
         $sql = "UPDATE CMS_MAILINGLIST_SUBSCRIBERS SET `mailinglist_status`='1' WHERE mailinglist_hash = '$hash'";
         mysql_query($sql, $db) or die(mysql_error());
         echo "Thank you, your email has been added to the mailing list.";
      }
   }
?>