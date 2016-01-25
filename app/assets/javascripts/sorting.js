$(function() {
  $('#event_photos').sortable({
    update: function(event, ui) {
      perfom_order_calculation();
    }
  });
});

$('#sortable').on('cocoon:after-insert', function(e, insertedItem) {
  perfom_order_calculation();
});

function perfom_order_calculation(){
  var count = 0;
  $('.event_event_photos_order input').each(function(){
    $(this).val(count++);
  });
}