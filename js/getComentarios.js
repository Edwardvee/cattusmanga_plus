export function cargarComentarios() {
    $(document).ready(function () {
        let searchParams = new URLSearchParams(window.location.search)

        $.ajax({
            url: "../controllers/getComentarios.php",
            type: "GET",
            data: {
                comentario: $('#textarea').val(),
                manga: searchParams.get("manga"),
                capitulo: searchParams.get("capitulo")
            },
            success:
                function (result) {
                    $('#comentarios').html(result)
                }
        });

    })
}
cargarComentarios()
export default cargarComentarios;