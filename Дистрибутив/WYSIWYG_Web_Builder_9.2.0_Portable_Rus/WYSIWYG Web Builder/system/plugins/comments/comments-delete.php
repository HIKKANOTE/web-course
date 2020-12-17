<?php
   global $db;
   $sql = "DELETE FROM CMS_COMMENTS_ITEMS WHERE id='".$_REQUEST['comment_id']."'";
   mysql_query($sql, $db) or die(mysql_error());
?>