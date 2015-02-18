$(window).ready(function(){

  $("#stock-form input.required").on("keyup", function(){
    console.log("keyup on " + $(this).id);
  });

  $("#stock-form input.required").on("keydown", function(){
    console.log("keydown on " + $(this).id);
  });

  $("#stock-form").on("submit", function(submitEvent) {

    $(".error-warning").remove();

    $("#stock-form input.required").each(function(){
      var value = $(this).val();
      if (value.length === 0){
        $('<div class="error-warning">Fill Me In</div>').insertAfter($(this));
          anyFieldsAreBlank = true;
      }
    });

    // var fieldIds = ["#stock-symbol", "#stock-price", "#stock-quantity"];
    // for(index in fieldIds) {
    //   var id = fieldIds[index];
    //   var value = $(id).val();
    //
    //
    //   if (value.length === 0){
    //     $('<div class="error-warning">Fill Me In</div>').insertAfter($(id));
    //       anyFieldsAreBlank = true;
    //   }
    // }


    // var symbol = $("#stock-symbol").val(); // gets the value from the field
    // var price = $("#stock-price").val();
    // var quantity = $("#stock-quantity").val();
    //
    // // for each, test length
    //
    // var anyFieldsAreBlank = false;
    //
    // if (symbol.length === 0) {
    //   $('<div class="error-warning">Fill Me In</div>').insertAfter($('#stock-symbol'));
    //   anyFieldsAreBlank = true;
    // }
    //
    // if (price.length === 0) {
    //   $('<div class="error-warning">Fill Me In</div>').insertAfter($('#stock-price'));
    //   anyFieldsAreBlank = true;
    // }
    //
    // if (quantity.length === 0) {
    //   $('<div class="error-warning">Fill Me In</div>').insertAfter($('#stock-quantity'));
    //   anyFieldsAreBlank = true;
    // }

    if (anyFieldsAreBlank) {
      submitEvent.preventDefault(); // Stops the form from submitting
    }
  });

});
