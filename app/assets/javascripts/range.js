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

var ammo = {
  sg12: 150,
  r22: 300,
  r308: 800,
  bmg50:3000
}

function drawCircle(ammo) {
      var center = new google.maps.LatLng(crd.latitude, crd.longitude);
          var options = {
            strokeColor: 'red',
            strokeOpacity: 1.0,
            strokeWeight: 1,
            fillColor: 'red',
            fillOpacity: 0.5,
            map: map,
            center: center,
            radius: ammo
        };

        circle = new google.maps.Circle(options);
}