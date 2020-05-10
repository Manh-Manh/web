$(document).ready(function () {

    $(".subImg").click(function () {
        
        var link =this.getAttribute("src");
        
        $("#item-display").attr("src", link);
    });
});
