---
layout: page
title: Map
description: Waar verblijven we?
permalink: /map/

custom_css: https://api.mapbox.com/mapbox-gl-js/v0.38.0/mapbox-gl.css
custom_js: 
- https://api.mapbox.com/mapbox-gl-js/v0.38.0/mapbox-gl.js
---

<script src='https://api.mapbox.com/mapbox-gl-js/v0.38.0/mapbox-gl.js'></script>
<link href='https://api.mapbox.com/mapbox-gl-js/v0.38.0/mapbox-gl.css' rel='stylesheet' />

<div id='map' style='width: 800px; height: 600px;'></div>
<script>
mapboxgl.accessToken = '{{site.mapbox.public_token}}';
var map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/satellite-streets-v9', //mapbox://styles/mapbox/streets-v9'
    zoom: 5,
    center: [24.44879, -29.59752017],
    attributionControl: false

});
</script>