/**
 * Created by ianvaughnkoeppe on 10/26/16.
 */

var map;
function initMap() {
    map = new google.maps.Map(document.getElementById("map-canvas"), {
        center: new google.maps.LatLng(41.251840, -96.011573),
        zoom: 15
    });
}

function drawMarker(longitude, latitude, title, image, content) {
    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(latitude, longitude),
        map: map,
        title: title,
        icon: image
    });
    var infowindow = new google.maps.InfoWindow({
        content: content
    });
    marker.addListener('click', function () {
        infowindow.open(map, marker);
    });
}

function fillInLocation() {
    var infoWindow = new google.maps.InfoWindow({map: map});

    // Try HTML5 geolocation.
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (position) {
            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };

            document.getElementById("parking_longitude").value = pos.lng;
            document.getElementById("parking_latitude").value = pos.lat;
        }, function () {
            handleLocationError(true, infoWindow, map.getCenter());
        });
    } else {
        handleLocationError(false, infoWindow, map.getCenter());
    }
}
fillInLocation();

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
        'Error: The Geolocation service failed.' :
        'Error: Your browser doesn\'t support geolocation.');
}