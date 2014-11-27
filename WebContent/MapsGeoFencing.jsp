
<%@ page import="java.sql.*" %>
<% 

Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "xxxx");
Statement statement = connection.createStatement() ;

String dbQuery = "SELECT latitude,longitude from appointment WHERE computed = 'no';";
ResultSet rset = statement.executeQuery(dbQuery) ; 
System.out.println(dbQuery);




String DBlatitude = "";
String DBlongitude = "";

// Get from just one from the database 
// 



while (rset.next()){
		DBlatitude = rset.getString(1);
 		DBlongitude = rset.getString(2);
}

%>

<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Circles</title>
    <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
    <script>
// This example creates circles on the map, representing
// populations in North America.

// First, create an object containing LatLng and population for each city.
var citymap = {};
citymap['chicago'] = {
  center: new google.maps.LatLng(41.878113, -87.629798),
  population: 2714856
};
citymap['newyork'] = {
  center: new google.maps.LatLng(40.714352, -74.005973),
  population: 8405837
};
citymap['losangeles'] = {
  center: new google.maps.LatLng(34.052234, -118.243684),
  population: 3857799
};
citymap['vancouver'] = {
  center: new google.maps.LatLng(49.25, -123.1),
  population: 603502
};
citymap['singapore'] = {
		  center: new google.maps.LatLng(<%=DBlatitude%>, <%=DBlongitude%>),
		  population: 5
		};


var cityCircle;

function initialize() {
  // Create the map.
  var mapOptions = {
    zoom: 15,
    center: new google.maps.LatLng(<%=DBlatitude%>, <%=DBlongitude%>),
    mapTypeId: google.maps.MapTypeId.TERRAIN
  };

  var map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);

  // Construct the circle for each value in citymap.
  // Note: We scale the area of the circle based on the population.
  for (var city in citymap) {
    var populationOptions = {
      strokeColor: '#FF0000',
      strokeOpacity: 0.8,
      strokeWeight: 2,
      fillColor: '#FF0000',
      fillOpacity: 0.35,
      map: map,
      center: citymap[city].center,
      radius: Math.sqrt(citymap[city].population) * 100
    };
    // Add the circle for this city to the map.
    cityCircle = new google.maps.Circle(populationOptions);
  }
}

google.maps.event.addDomListener(window, 'load', initialize);

    </script>
  </head>
  <body>
    <div id="map-canvas"></div>
  </body>
</html>