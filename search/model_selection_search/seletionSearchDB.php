<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include_once 'model/conexao/conexao.php';
header('model/conexao/conexao.php');

$select = mysql_select_db($banco);
    if(!$select){
      echo 'FALHA AO SELECIONA DB '.  mysql_error(); 
    }else{
      $sql_name_loja = "SELECT DISTINCT nome_loja FROM loja";  
      $sql_name_produto = "SELECT DISTINCT nome_produto FROM produto";
      $sql_name_cidade = "SELECT DISTINCT cidade FROM loja";
      $sql_name_estado = "SELECT DISTINCT estado FROM loja";
      $sql_name_categoria = "SELECT DISTINCT categoria FROM produto";
    }
    $result_loja = mysql_query($sql_name_loja);
    $result_produto = mysql_query($sql_name_produto);
    $result_cidade = mysql_query($sql_name_cidade);
    $result_estado = mysql_query($sql_name_estado);
    $result_categoria = mysql_query($sql_name_categoria);
    
    
    while ($tbl = mysql_fetch_array($result_loja)){
        $nome_loja[] = $tbl["nome_loja"];
    }
    while ($tbl = mysql_fetch_array($result_produto)){
        $nome_produto[] = $tbl["nome_produto"];
    }
    while ($tbl = mysql_fetch_array($result_cidade)){
        $cidade_loja[] = $tbl["cidade"];
    }
    while ($tbl = mysql_fetch_array($result_estado)){
        $estado_loja[] = $tbl["estado"];
    }
    while ($tbl = mysql_fetch_array($result_categoria)){
        $categoria_produto[] = $tbl["categoria"];
    }
       




