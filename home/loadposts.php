<?php
   include('session.php');
   require('../connect.php');
   $data = json_decode(file_get_contents("php://input"), true);
   $query = "select id,userid,username,title,image_link,content,date from posts order by timestamp desc limit " . $data['offset'] . ",10";
   
   if(isset($_GET['user'])){
        $uid = $_GET['user'];
        $query = "select id,userid,username,title,image_link,content,date from posts where userid='$uid' order by timestamp desc limit " .$data['offset'] . ",10";
   }
   
    $result = mysqli_query($conn, $query);
    $posts = [];
    if($result) {
        while($post=mysqli_fetch_array($result)) {
            array_push($posts, $post);
        }
    }

    $json = json_encode($posts,true); 
    echo $json;
?>