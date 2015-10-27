<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$server = 'debian-fb';
$usuario = 'root';
$senha = 'debian2812debian';
$banco = 'DB_Cliente_CustonPB';

$link = mysql_connect($server,$usuario,$senha);

if(!$link){
    echo 'CONEXAO FALHOU '.mysql_error();
}      

