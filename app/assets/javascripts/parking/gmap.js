/**
 * Created by ianvaughnkoeppe on 10/26/16.
 */

var map;
function initMap() {
    map = new google.maps.Map(document.getElementById("map-canvas"), {
        center: new google.maps.LatLng(41.251840, -96.011573),
        zoom: 15
    });
    drawMarkers();
}

function drawMarkers() {
    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(41.248245, -96.016925),
        map: map,
        title: "Ian"
    })
}