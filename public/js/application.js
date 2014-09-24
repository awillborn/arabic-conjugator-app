$(document).ready(function() {
  $('#conj-form').on("submit", function(e){
    e.preventDefault()
    var data = $(this).serialize()
    $.ajax({
      url: "/conjugate",
      type: "POST",
      data: data
    }).success(function(verb){
      appendVerb(verb)
    })
  })
});

function appendVerb(verb){
  $('#result').html(verb)
}
