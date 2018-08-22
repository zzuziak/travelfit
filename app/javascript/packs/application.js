import "bootstrap";

// import "../plugins/flatpickr";


import $ from 'jquery';

global.$ = jQuery;
global.jQuery = jQuery;



document.querySelector("#free").addEventListener("click", event => {
  debugger
  $("#search-form").submit();
});
// document.querySelector("#search-text").addEventListener("blur", event => {
//   console.log(document.getElementById("search-form"));
//   document.getElementById("search-form").submit();
// });
// document.querySelector("#date-from").addEventListener("blur", event => {
//   document.getElementById("search-form").submit();
// });
// document.querySelector("#date-to").addEventListener("blur", event => {
//   document.getElementById("search-form").submit();
// });
