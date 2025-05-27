<?php
    header("Content-Type: application/json");
    header("Accest-Control-Allow-Origin: *");
    
    $usuarios=[
        ["id" => 1, "nombre" => "Krisell Bettina", "correo" => "Krisell@gmail.com"],
        ["id" => 1, "nombre" => "Bayron Uriel", "correo" => "Bayron@gmail.com"],
        ["id" => 1, "nombre" => "Paolo Nicholas", "correo" => "Paolo@gmail.com"],
    ];

    echo json_encode($usuarios);

?>