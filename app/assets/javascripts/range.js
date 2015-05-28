function setRange() {
    $.ajax({
      url: "/api/ammunition",
      method: "get"
    }).done(function(data) {
      $.each(data, function(index, obj) {
        // console.log(index);
        // console.log(obj);
        $("#dropdown2").append("<li><a class='draw-circle' href='#'>" + obj.name + "</a></li>")
      })
    });
}

$(function(){
  setRange();
})