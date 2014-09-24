$(document).ready(function() {
  $('#conj-form').on("submit", function(e){
    e.preventDefault()
    var data = $(this).serialize()
    $.ajax({
      url: "/conjugate",
      type: "POST",
      data: data
    }).success(function(response){
      console.log(response)
    })
  })
});
