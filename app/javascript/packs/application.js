require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start();

import "bootstrap";

import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  const map = document.getElementById('map')
  if (map) {
    initMapbox();
  }
})

window.onscroll = function() {myFunction()};

// Get the navbar
var navbar = document.querySelector(".navbar");

// // Get the offset position of the navbar
// var sticky = navbar.offsetTop;

// // Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
// function myFunction() {
//   if (window.pageYOffset >= sticky) {
//     navbar.classList.add("sticky")
//   } else {
//     navbar.classList.remove("sticky");
//   }
// }
