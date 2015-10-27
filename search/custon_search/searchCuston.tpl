<?php include_once 'var.php'; ?>
<?php header('var.php'); ?>
<style type="text/css">
    #formSearch {
    position: relative;
    height: 200px;
}
</style>

    <form id="form">
        <br>
        <select name="categoria" class="custom" >
            <option>  	Categoria		 </option>
            <?php 
                foreach ($categoria_produto as $categoria){
                    echo'<option>';
                    echo"$categoria";
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
        <select name="marca" class="custom">
            <option>  	Marca		 </option>
            <?php 
                foreach ($nome_produto as $pecas){
                    echo'<option>';
                    echo"$pecas";
                    echo'</option>';
                }
            ?>
        </select> 
        <select name="veiculo" class="custom">
            <option>  	Veiculo		 </option>
            <?php 
                foreach ($nome_produto as $pecas){
                    echo'<option>';
                    echo"$pecas";
                    echo'</option>';
                }
            ?>
        </select> 
        <br><br>
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
        <select name="loja" class="custom">
            <option>  	Loja		 </option>
            <?php 
                foreach ($nome_produto as $pecas){
                    echo'<option>';
                    echo"$pecas";
                    echo'</option>';
                }
            ?>
        </select>
        <select name="preco" class="custom">
            <option>  	Preço		 </option>
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
