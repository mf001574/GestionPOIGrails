<%--
  Created by IntelliJ IDEA.
  User: Florian
  Date: 05/12/2015
  Time: 20:28
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Détail Groupe</title>
</head>
<body>
<g:include view="frontEnd/menu.gsp"></g:include>
<div class="content">
    <h3>${groupe.nom}</h3>
    <ul>
        <li>Id : ${groupe.id}</li>
        <li>POI(s) :
            <ul>
                <g:each in="${groupe.pois}" var="poi">
                    <li>${poi.nom}</li>
                </g:each>
            </ul>
        </li>
    </ul>
    <ul class="lImg">
    <g:each in="${groupe.images}" var="img">
        <li><asset:image src="${img.src}"></asset:image></li>
    </g:each>
    </ul>

    <div id="map" style="width: 650px; height: 300px;">... Please Wait ... The Map is loading ...</div>
    <script>
        var map;
        function initMap() {
            var myLatLng = {lat: 43.696, lng: 7.2656};
            map = new google.maps.Map(document.getElementById('map'), {
                center: myLatLng,
                zoom: 12
            });
            <g:each in="${groupe.pois}" var="p">
            var emplacementLatitude = parseFloat("${p.emplacement.latitude}");
            var emplacementLongitude = parseFloat("${p.emplacement.longitude}");
            var POIInfos = "${p.nom}";
            var infowindow = new google.maps.InfoWindow();
            var pointOfInterestLatLng = {lat: emplacementLatitude, lng: emplacementLongitude};
            var marker = new google.maps.Marker({
                position: pointOfInterestLatLng,
                map: map,
                title: 'Map des POIs'
            });
            google.maps.event.addListener(marker, 'click', (function(marker, POIInfos) {
                return function() {
                    infowindow.setContent(POIInfos);
                    infowindow.open(map, marker);
                }
            })(marker, POIInfos));
            </g:each>
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
            async defer></script>
</div>

</body>
</html>