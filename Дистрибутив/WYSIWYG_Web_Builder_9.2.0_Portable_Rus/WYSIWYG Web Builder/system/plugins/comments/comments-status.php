<?php
   global $db;
   $sql = "UPDATE CMS_COMMENTS_ITEMS SET status='".$_REQUEST['comment_status']."' WHERE id='".$_REQUEST['comment_id']."'";
   mysql_query($sql, $db) or die(mysql_error());
?>