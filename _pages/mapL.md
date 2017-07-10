---
layout: page
title: mappies
description: Waar verblijven we?
permalink: /mappies/
---

<div id='map' style='width: 800px; height: 500px;'></div>

<script>
L.mapbox.accessToken = '{{ site.mapbox.public_token }}';
var map = L.mapbox.map('map', 'mapbox.streets',{
  legendControl: {
    position: 'topright'
  }
}).setView([-25.8929, 21.5252], 5);

var geojson = {% include pois.geojson %};
var myLayer = L.mapbox.featureLayer().addTo(map);

// Add custom popup html to each marker.
myLayer.on('layeradd', function(e) {
    var marker = e.layer;
    var feature = marker.feature;
    var image = feature.properties["marker-image"];

    var content =  '<div class="popup">' +
                            '<h2>' + feature.properties.title + '</h2>' +
                              '<div class="image">' +
                                '<img src="' + image + '" />' +
                              '</div>'
                        '</div>';
    marker.bindPopup(content,{
        closeButton: true,
        minWidth: 320
    });
});

myLayer.on('click', function(e) {
    var marker = e.layer;
    var coordinates = marker.feature.geometry.coordinates;
    map.flyTo(e.latlng);

});


myLayer.setGeoJSON(geojson);
map.legendControl.addLegend('<strong>Onze bestemming voor deze reis!</strong>');

</script>
