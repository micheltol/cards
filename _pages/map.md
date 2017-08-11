---
layout: maplayout
title: Map overview
description: Waar verblijven we?
permalink: /map/
---
<style type="text/css">
        body { margin:0; padding:0; }
        #map { position:absolute; top:72px; bottom:0; width:100%; }
        .popup > .container> .row > .col-md-12 {padding-left:0px;}
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

    myLayer.on('layeradd', function(e) {
        var marker = e.layer;
        var feature = marker.feature;
        var image = feature.properties["marker-image"];

        var bookedViaContent = "";
        if (feature.properties["booking-url"] != "") {
        bookedViaContent =      '<li><i class="fa-li fa fa-external-link-square"></i>'
                                +    '<a target="_blank" href="'+feature.properties["booking-url"]+'">' 
                                +feature.properties.bookingagency
                                + '</a></li>';
        }

        var facebookContent = "";
        if (feature.properties["facebook"] != "") {
        facebookContent =      '<li><i class="fa-li fa fa-facebook-square"></i>'
                                +    '<a target="_blank" href="'+feature.properties["facebook"]+'">' 
                                +feature.properties["facebook"].replace("https://www.facebook.com/","")
                                + '</a></li>';
        }

        var content =            '<div class="popup">'
                                + '<div class="container">'
                                +    '<div class="row">'
                                +      '<div class="col-md-12">'
                                +        '<h2>'
                                +          feature.properties.title
                                +        '</h2>'
                                +      '</div>'
                                +      '<div class="col-md-12">'
                                +        '<ul class="fa-ul">'
                                +          '<li><i class="fa-li fa fa-calendar"></i>'
                                +             moment(feature.properties.startdate).format('DD MMM') + ' - ' 
                                +             moment(feature.properties.enddate).format('DD MMM')
                                +          '</li>'
                                +          bookedViaContent
                                +          facebookContent  
                                +        '</ul>'
                                +      '</div>'
                                +      '<div class="col-md-12 image">'
                                +        '<img src="' + image + '" width="300px" />' 
                                +      '</div>'                                                                
                                +    '</div>'
                                + '</div>'
                                +'</div>';

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
