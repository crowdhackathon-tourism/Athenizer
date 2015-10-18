<%-- 
    Document   : maps
    Created on : Oct 18, 2015, 2:08:12 PM
    Author     : Grigoris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <style type="text/css">
      html, body { height: 100%; margin: 0; padding: 0; }
      #map { height: 100%; }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script type="text/javascript">

var map;
var address
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 37.968489710582105, lng: 23.72871994972229, address: "Makrigianni 4, Athina 117 42, Greece"},
    zoom: 8
  });
}

    </script>
    <script async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDqijx50GW2tERe3kyx9aNVBYqNGAj9914 &callback=initMap">
    </script>
  </body>
</html>