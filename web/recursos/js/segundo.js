$(document).ready(function () {
// 
    alert("ok");
});



function guardar() {
    var producto = $("#producto").val();
    var precio = $("#precio").val();
    var cantidad = $("#cantidad").val();
    $.post("pp", {
        op:'2',
        producto: producto,
        precio: precio,
        cantidad: cantidad
    }, function (data, status) {
        $("#add_new_record_modal").modal("hide");
        listar();
        $("#producto").val("");
        $("#precio").val("");
        $("#cantidad").val("");
    });
}