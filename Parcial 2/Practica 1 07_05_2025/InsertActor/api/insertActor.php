<?php
    header("Content-Type: application/json");

    if($_SERVER['REQUEST_METHOD'] !== 'POST'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo POST es peraitido']);
    }

    //conectar a la BD sakila
    require 'conexionSakila.php';

    $data = json_decode(file_get_contents{'php://input', true});
    $first_name = $data ['first_name'];
    $last:name = $data['last_name'];

    $query = $conn->prepare("INSERT INTO actor (first_name, last_name) VALUES (?, ?)");

    if(!$query){
        http_response_code(500);
        echo json_encode(["error" => "ocurrio un error"]);
        exit;
    }

    $query->bind_param("ss", $first_name, $last_name);

    if($query->execute()){
        echo json_encode(["mensaje" => "Actor insertado correctamente", "actor_id" => $query->insert_id]);
    } else {
        http_response_code(500);
        echo json_encode[("error" => "fallo la insercion" . $query->error)];
    }

    $query->close();
    $conn->close();

?>