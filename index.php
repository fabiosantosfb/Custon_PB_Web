<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Busca</title>
        <link rel="stylesheet" href="/search/style/stylesearchSearch.css" type="text/css">
       <script src="search/custon_search/java_script/seach.js"></script>
    </head>
    <body>

        <?php
        
        include_once 'search/custon_search/search.tpl';
        header('search/custon_search/search.tpl');
        
        include_once 'search/model_selection_search/seletionSearchDB.php';
        header('search/model_selection_search/seletionSearchDB.php');
        

        ?>
    </body>
</html>
