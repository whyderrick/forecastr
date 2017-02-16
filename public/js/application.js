$(document).ready(function() {
  getForecast();
  $('select').material_select();
});

function getForecast() {
  $("#city-selector").on("submit", function(e){
    e.preventDefault();
    var form = this;

    var method = $(form).attr("method");
    var data = $(form).serialize();
    var url = $(form).attr("action");

    $.ajax({
      url: url,
      method: method,
      data: data
    }).done(function(msg) {
      $(".forecast-container").append(msg);
    })
  })
}
