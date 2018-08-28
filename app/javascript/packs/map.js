import GMaps from 'gmaps/gmaps.js';


import { autocomplete } from '../components/autocomplete';

autocomplete();

const mapElement = document.getElementById('map');


const styles = [ {
        "featureType": "administrative",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#444444"
            }
        ]
    },
    {
        "featureType": "administrative.locality",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#378b90"
            }
        ]
    },
    {
        "featureType": "administrative.neighborhood",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#05A8AA"
            }
        ]
    },
    {
        "featureType": "landscape",
        "elementType": "all",
        "stylers": [
            {
                "color": "#f2f2f2"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "all",
        "stylers": [
            {
                "saturation": -100
            },
            {
                "lightness": 45
            }
        ]
    },
    {
        "featureType": "road.highway",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "simplified"
            }
        ]
    },
    {
        "featureType": "road.arterial",
        "elementType": "labels.icon",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "transit",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "all",
        "stylers": [
            {
                "color": "#46bcec"
            },
            {
                "visibility": "on"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#05A8AA"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "geometry.stroke",
        "stylers": [
            {
                "color": "#05A8AA"
            }
        ]
    }
];


if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0, styles: styles });
  const markers = JSON.parse(mapElement.dataset.markers);
  // Here we store map markers in an array BEFORE adding them to the map
  const mapMarkers = [];
  markers.forEach((marker) => {
    const mapMarker = map.createMarker(marker);
    mapMarkers.push(mapMarker);
    map.addMarker(mapMarker);
  });

  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }

  // Map marker animation
  // Select all cards
  const cards = document.querySelectorAll('.card-event');
  cards.forEach((card, index) => {
    // Put a microphone on each card listenning for a hover event
    card.addEventListener('mouseenter', () => {
      // Here we trigger the display of the corresponding marker infoWindow as it is the default behavior of a click on a  marker
      google.maps.event.trigger(mapMarkers[index], 'click');
    });
  });
};
