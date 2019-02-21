import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
  };

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/albertcampillo/cjsd7aq9h0as31ft6402g454y'
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const element = document.createElement('div');
        element.className = 'marker';
        element.style.backgroundImage = `url('${marker.image_url}')`;
        element.style.backgroundSize = 'contain';
        element.style.width = '25px';
        element.style.height = '25px';
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      new mapboxgl.Marker(element)
          .setLngLat([marker.lng, marker.lat])
          .setPopup(new mapboxgl.Popup({ offset: 25 }) // add popups
          .setHTML(marker.infoWindow.content))
          .addTo(map);
    });
    fitMapToMarkers(map, markers);
    // map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken }));
  }
  var mapCenter = document.getElementsByClassName("mapboxgl-canvas");
  mapCenter[0].style.position = "relative";

};

export { initMapbox };
