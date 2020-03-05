// import GMaps from 'gmaps/gmaps.js';


import { autocomplete } from '../components/autocomplete';

autocomplete();

// const mapElement = document.getElementById('map');

import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
   const markers = JSON.parse(mapElement.dataset.markers);
   markers.forEach((marker) => {
     const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this
     const element = document.createElement('div');
     element.className = 'marker';
     element.style.backgroundImage = `url('${marker.image_url}')`;
     element.style.backgroundSize = 'contain';
     element.style.width = '25px';
     element.style.height = '25px';
      new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
      });

   fitMapToMarkers(map, markers);
  }


};

export { initMapbox };

// const styles = [ {
//         "featureType": "administrative",
//         "elementType": "labels.text.fill",
//         "stylers": [
//             {
//                 "color": "#444444"
//             }
//         ]
//     },
//     {
//         "featureType": "administrative.locality",
//         "elementType": "labels.text.fill",
//         "stylers": [
//             {
//                 "color": "#378b90"
//             }
//         ]
//     },
//     {
//         "featureType": "administrative.neighborhood",
//         "elementType": "labels.text.fill",
//         "stylers": [
//             {
//                 "color": "#05A8AA"
//             }
//         ]
//     },
//     {
//         "featureType": "landscape",
//         "elementType": "all",
//         "stylers": [
//             {
//                 "color": "#f2f2f2"
//             }
//         ]
//     },
//     {
//         "featureType": "poi",
//         "elementType": "all",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "road",
//         "elementType": "all",
//         "stylers": [
//             {
//                 "saturation": -100
//             },
//             {
//                 "lightness": 45
//             }
//         ]
//     },
//     {
//         "featureType": "road.highway",
//         "elementType": "all",
//         "stylers": [
//             {
//                 "visibility": "simplified"
//             }
//         ]
//     },
//     {
//         "featureType": "road.arterial",
//         "elementType": "labels.icon",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "transit",
//         "elementType": "all",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "water",
//         "elementType": "all",
//         "stylers": [
//             {
//                 "color": "#46bcec"
//             },
//             {
//                 "visibility": "on"
//             }
//         ]
//     },
//     {
//         "featureType": "water",
//         "elementType": "geometry.fill",
//         "stylers": [
//             {
//                 "color": "#05A8AA"
//             }
//         ]
//     },
//     {
//         "featureType": "water",
//         "elementType": "geometry.stroke",
//         "stylers": [
//             {
//                 "color": "#05A8AA"
//             }
//         ]
//     }
// ];


// if (mapElement) { // don't try to build a map if there's no div#map to inject in
//   const map = new GMaps({ el: '#map', lat: 0, lng: 0, styles: styles });
//   const markers = JSON.parse(mapElement.dataset.markers);
//   // Here we store map markers in an array BEFORE adding them to the map
//   const mapMarkers = [];
//   markers.forEach((marker) => {
//     const mapMarker = map.createMarker(marker);
//     mapMarkers.push(mapMarker);
//     map.addMarker(mapMarker);
//   });
//
//   if (markers.length === 0) {
//     map.setZoom(2);
//   } else if (markers.length === 1) {
//     map.setCenter(markers[0].lat, markers[0].lng);
//     map.setZoom(14);
//   } else {
//     map.fitLatLngBounds(markers);
//   }
//
//   // Map marker animation
//   // Select all cards
//   const cards = document.querySelectorAll('.card-event');
//   cards.forEach((card, index) => {
//     // Put a microphone on each card listenning for a hover event
//     card.addEventListener('mouseenter', () => {
//       // Here we trigger the display of the corresponding marker infoWindow as it is the default behavior of a click on a  marker
//       google.maps.event.trigger(mapMarkers[index], 'click');
//     });
//   });
// };
