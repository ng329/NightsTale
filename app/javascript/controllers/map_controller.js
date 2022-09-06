import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"
import { placements } from "@popperjs/core"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }
  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    // creates new map
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/dark-v10",
      // center: [-79.4512, 43.6568],
      // zoom: 13
    })
    // Add markers to map
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
    // add search function to map
    // this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
    //   mapboxgl: mapboxgl }))
    const geocoder = new MapboxGeocoder({
      accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl
      });

    document.getElementById('search-bar').appendChild(geocoder.onAdd(this.map));
    const filterGroup = document.getElementById('top-bar');

    const markers = this.#markersjson

    console.log(markers)

    this.map.on('load', () => {
      this.map.addSource('markers', {
      'type': 'geojson',
      'data': markers
      });

      for (const features of markers.features) {
        const symbol = features.properties.icon;
        const layerID = `poi-${symbol}`;
        if (!this.map.getLayer(layerID)) {
          this.map.addLayer({
            'id': layerID,
            'type': 'symbol',
            'source': 'markers',
            'layout': {
              'visibility': 'visible',
              'icon-image': `${symbol}-15`,
              'icon-allow-overlap': true
            },
          'filter': ['==', 'icon', symbol]
          });
          const input = document.createElement('input');
          input.type = 'checkbox';
          input.id = layerID;
          input.checked = true;
          console.log(input)
          filterGroup.appendChild(input);

          const label = document.createElement('label');
          label.setAttribute('for', layerID);
          filterGroup.appendChild(label);
          input.addEventListener('change', (e) => {
            this.map.setLayoutProperty(
            layerID,
            'visibility',
            e.target.checked ? 'visible' : 'none'
            );
          });
        }
      }
    });
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      // adds popup on markers onto map
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
  #markersjson() {
    const array = []
    this.markersValue.forEach((location) => {
      console.log(location)
      const hash = {
        'type': 'Feature',
        'properties': {
        'icon': 'music'
        },
        'geometry': {
        'type': 'Point',
        'coordinates': [location.lng, location.lat]
        }
      }
      array.push(hash)
    });
    markers = { 'type': 'FeatureCollection',
    'features': array
    }
    return markers
  }
}
