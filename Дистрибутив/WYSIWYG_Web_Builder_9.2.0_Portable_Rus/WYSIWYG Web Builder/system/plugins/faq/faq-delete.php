<?php
   global $db;
   if (isset($_REQUEST['faqid']))
   {
      $sql = "DELETE FROM CMS_FAQ WHERE id='".$_REQUEST['faqid']."'";
      mysql_query($sql, $db) or die(mysql_error());
   }
?>