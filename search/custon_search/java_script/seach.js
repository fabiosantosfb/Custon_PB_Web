/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function selectionRadio() {
    var radios = document.getElementsByName("search");
    for (var i = 0; i < radios.length; i++) {
        if (radios[i].checked) {
            var radioSeletion = radios[i].value;
            if (radioSeletion === "searchStore") {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    document.getElementById("formSearch").innerHTML = xhttp.responseText;
                };
                xhttp.open("GET", "searchStore.php", true);
                xhttp.send();
                return xhttp;
            } else if (radioSeletion === "searchCategory") {
   
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    document.getElementById("formSearch").innerHTML = xhttp.responseText;
                };
                xhttp.open("GET", "searchCategory.php", true);
                xhttp.send();
                return xhttp;
            } else {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    document.getElementById("formSearch").innerHTML = xhttp.responseText;
                };
                xhttp.open("GET", "searchCuston.php", true);
                xhttp.send();
                return xhttp;
            }
        }
    }
}


