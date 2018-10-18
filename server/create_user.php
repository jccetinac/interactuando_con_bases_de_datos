<?php
#Codigo para crear los usuarios
$conexion =
new mysqli('localhost', 'root','','mipropiaagenda')or die (mysqli_errno($conexion));
$sql="INSERT INTO usuario(nombre,usuario,clave,fec_nacimiento) values(?,?,?,?)";
$insert=$conexion->prepare($sql);
$insert->bind_param("ssss",$nombre,$usuario,$clave,$fec_nacimiento);

$nombre="camilo1";
$usuario="camilo1@mail.com";
$clave=password_hash("12345", PASSWORD_DEFAULT);
$fec_nacimiento="1999-12-31";
$insert->	;

$nombre="camilo2";
$usuario="camilo2@mail.com";
$clave=password_hash("qwerty", PASSWORD_DEFAULT);
$fec_nacimiento="1999-12-31";
$insert->execute();

$nombre="camilo3";
$usuario="camilo3@mail.com";
$clave=password_hash("asdfgh", PASSWORD_DEFAULT);
$fec_nacimiento="1999-12-31";
$insert->execute();

$conexion->close();

 ?>
