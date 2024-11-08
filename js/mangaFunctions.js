//import { cargarComentarios } from "./getComentarios.js";
function getLike() {
    $(document).ready(function () {
        let searchParams = new URLSearchParams(window.location.search)
        $.ajax({
            url: "../controllers/mangas/checklike.php",
            type: "POST",
            data: {
                manga: searchParams.get("manga"),
            },
            success:
                function (result) {
                   if(result == "liked"){
                    $("#iconLike").removeClass("bi-heart")
                    $("#iconLike").addClass("bi-heart-fill")
                   
                   }
                   else if(result=="unliked"){
                    $("#iconLike").removeClass("bi-heart-fill")
                    $("#iconLike").addClass("bi-heart")
                    $("#unlikeToast").toast('show')
                   }
                   
                }
        });})
}
function getFavorite() {
    $(document).ready(function () {
        let searchParams = new URLSearchParams(window.location.search)
        $.ajax({
            url: "../controllers/mangas/checkfavorite.php",
            type: "POST",
            data: {
                manga: searchParams.get("manga"),
            },
            success:
                function (result) {
                   if(result == "fav"){
                    $("#iconFav").removeClass("bi-star")
                    $("#iconFav").addClass("bi-star-fill")
                   }
                   else if(result=="notfav"){
                    $("#iconFav").removeClass("bi-star-fill")
                    $("#iconFav").addClass("bi-star")
                   }
                }
        });})
}
$(document).ready(function () {
    let searchParams = new URLSearchParams(window.location.search)

    $("#likeButton").click(function (e) {
        e.preventDefault();
        $.ajax({
            url: "../controllers/mangas/like.php",
            type: "POST",
            data: {
                manga: searchParams.get("manga"),
            },
            success:
                function () {
                   
                   getLike()
                    $("#likeToast").toast('show')
                
                }
        });
       
    });
    $("#favButton").click(function (e) {
        e.preventDefault();
        $.ajax({
            url: "../controllers/mangas/favourite.php",
            type: "POST",
            data: {
                manga: searchParams.get("manga"),
            },
            success:
                function () {
                    getFavorite()
                    $("#favToast").toast('show')
                }
        });
       
    });
    
});
getLike();
getFavorite();