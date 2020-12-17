<?php
   global $db;
   if (isset($_REQUEST['fieldid']))
   {
      $sql = "DELETE FROM CMS_FORM_FIELDS WHERE id='".$_REQUEST['fieldid']."'";
      mysql_query($sql, $db) or die(mysql_error());
   }
?>