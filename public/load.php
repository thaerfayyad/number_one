<?php

//load.php

$connect = new PDO('mysql:host=localhost;dbname=linekw_lawyer', 'linekw_ajerly', 'uz486hvgMeoe');

$data = array();

$query = "SELECT * FROM orders ORDER BY id";

$statement = $connect->prepare($query);

$statement->execute();

$result = $statement->fetchAll();

foreach($result as $row)
{
 $data[] = array(
  'id'   => $row["id"],
  'title'   => "Orderd",
  'start'   => $row["created_at"],
  'end'   => $row["updated_at"]
 );
}

echo json_encode($data);

?>
