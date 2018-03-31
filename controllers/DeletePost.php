<?php
  // including the database connection file
  include("../config/db/DBConnect.php");

	// getting id from url
	$postID = $_GET['postID'];
  // DEBUG: echo "$postID";

  // delete post
	$query = "DELETE FROM `post` WHERE `post`.`postID` = $postID";
  $update = mysqli_query($connection, $query);
  if($update) {
    // DEBUG:
    header("Location: UserProfile.php");
  } else {
    echo mysqli_connect_errno();
  }
  echo mysqli_error($connection);
?>
