<?php include_once 'var.php'; ?>
<?php header('var.php'); ?>
<style type="text/css">
    #formSearch {
    position: relative;
    height: 150px;
}
</style>

    <form id="form">
        <br>
        <select name="Loja" class="custom" >
            <option>  	Loja		 </option>
            <?php 
                foreach ($categoria_produto as $categoria){
                    echo'<option>';
                    echo"$categoria";
                    echo'</option>';
                }
            ?>
        </select>
        <select name="estado" class="custom" >
            <option>  	Estado		 </option>
            <?php 
                foreach ($estado_loja as $estado){
                    echo'<option>';
                    echo"$estado";
                    echo'</option>';
                }
            ?>
        </select>
        <select name="cidade" class="custom">
            <option>  	Cidade		 </option>
            <?php 
                foreach ($cidade_loja as $cidade){
                    echo'<option>';
                    echo"$cidade";
                    echo'</option>';
                }
            ?>
        </select>
        <select name="produto" class="custom">
            <option>  	Produto		 </option>
            <?php 
                foreach ($nome_produto as $pecas){
                    echo'<option>';
                    echo"$pecas";
                    echo'</option>';
                }
            ?>
 
        </select>  
    </form>
    <div id="search_title">
        <a href="#selection_item/searchItem.php?acao=busca">Buscar</a>
    </div>
