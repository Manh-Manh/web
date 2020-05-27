$(document).ready(function () {

    $(".cart-button-refresh").click(function () {
        var id = $(this).data('id');
        var cart = [];
        var quan;
        //alert(id);
        var quantity = $('.cart-item-quantity');
        $.each(quantity, function (i, item) {
            cart.push(
                {
                    quantity: $(item).val(),
                    Product: {
                        productID: $(item).data('id')
                    }
                });

        });
        $.ajax({
            url: "/Cart/Update",
            data: { JsonCart: JSON.stringify(cart) },
            dataType: 'json',
            type: 'POST',
            success: function (res) {
                if (res.status == true) {
                    window.location.href = '/Cart';
                }
                else {

                }
            }
        });
    });
    //delete
    $(".cart-button-delete").click(function () {
        var id = $(this).data('id');
        var cart = [];
        
        var quantity = $('.cart-item-quantity');
        $.each(quantity, function (i, item) {
            cart.push(
                {
                    quantity: $(item).val(),
                    Product: {
                        productID: $(item).data('id')
                    }
                });

        });
        $.ajax({
            url: "/Cart/Delete",
            data: { JsonID: JSON.stringify(id) },
            dataType: 'json',
            type: 'POST',
            success: function (res) {
                if (res.status == true) {
                    window.location.href = '/Cart';
                }
                else {

                }
            }
        });
    });




});