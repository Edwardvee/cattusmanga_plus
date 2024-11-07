import { cargarComentarios } from "./getComentarios.js";
function open_modal() {

}
$(document).ready(function () {
    $("#comentar").submit(function (e) {
        let searchParams = new URLSearchParams(window.location.search)
        $.ajax({
            url: "../controllers/mangas/comentar.php",
            type: "POST",
            data: {
                comentario: $('#textarea').val(),
                manga: searchParams.get("manga"),
                capitulo: searchParams.get("capitulo")
            },
            success:
                function (result) {
                    $("#textarea").val("")
                    $("#submit").addClass("disabled")
                    $("#toast-success").toast('show')
                    cargarComentarios()
                }
        });
        e.preventDefault();
    });
});
//mangas/comentar.php?manga=<?php echo $_GET['manga'] ?>&capitulo=<?php echo $_GET['capitulo'] ?>s