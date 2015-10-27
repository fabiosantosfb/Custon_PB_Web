<?php include_once 'var.php'; ?>
<?php header('var.php'); ?>

<!--directory search-->
<div class="search">
    <div id="imgsearch">
        <div id="imgselected">
            
                <input name="search" type="radio" value="searchStore" onclick="selectionRadio();" > <?php echo"$searchStore"; ?>&nbsp;
                <input name="search" type="radio" value="searchCategory" onclick="selectionRadio();" > <?php echo"$searchCategory"; ?>&nbsp;
                <input name="search" type="radio" value="searchCuston" onclick="selectionRadio();" > <?php echo"$searchCuston"; ?>
        </div>
    </div>
    <div  id="formSearch">           
    </div>
</div>
<!--fim search-->

