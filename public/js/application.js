$(document).ready(function() {
  console.log("Ready");
  getForecast();

});

function getForecast() {
  $("#city-selector").on("submit", function(e){
    e.preventDefault();
    var form = this;

    var method = $(form).attr("method");
    var data = $(form).serialize();
    var url = $(form).attr("action");

    console.log("Submitted the form!")
    $.ajax({
      url: url,
      method: method,
      data: data
    }).done(function(msg) {
      $(".forecast-container").append(msg);
    })
  })
}

function attachForecast(data) {
  $(".forecast-container").append(data);
}


var getExternalData = function() {
  $(".external-request").on("submit", function(e){
    e.preventDefault();
    var form = this;
    var method = $(form).attr("method");
    var data = $(form).serialize()
    var url = $(form).attr("action");
    $.ajax({
      url: url,
      method: method,
      data: data
    })
    .done( function( msg ) {
      $( "#result" ).html( msg )
    } )
  });
};

// var addGame = function() {
//   $("#result").on("submit", "#add-game", function(e){
//     e.preventDefault();
//     e.stopPropagation();
//     var form = this
//     var url = $(form).attr("action")
//     var method = $(form).attr("method")
//     var data = $(form).serialize()
//     // Might be on track to double post.
//     $.ajax({
//       url: url,
//       method: method,
//       data:  data
//     })

//   })
// }
