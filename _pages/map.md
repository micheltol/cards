---
layout: maplayout
title: Map overview
description: Waar verblijven we?
permalink: /map/
---
<style type="text/css">
        body { margin:0; padding:0; }
        #map { position:absolute; top:72px; bottom:0; width:100%; }
</style>

<div id="map"></div>

<script>
    L.mapbox.accessToken = '{{ site.mapbox.public_token }}';
    var map = L.mapbox.map('map', 'mapbox.streets',{
    legendControl: {
        position: 'topright'
    }
    }).setView([-25.8929, 21.5252],5);

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
    map.legendControl.addLegend('<strong>Onze overnachtingen voor deze reis!</strong>');
</script>
