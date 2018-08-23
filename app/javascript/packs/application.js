import "bootstrap";

// import "../plugins/flatpickr";


import $ from 'jquery';

global.$ = jQuery;
global.jQuery = jQuery;


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

let i = 1;
for (i = 1; i < 1000; i++) {
let btn = document.getElementById(`btn${i}`);
if (btn) {
  btn.addEventListener("click", (event) => {
  console.log(event.currentTarget);
  console.log(`step ${i}`);
  event.currentTarget.parentNode.parentNode.parentElement.nextElementSibling.classList.toggle("visible");
   });
  };
};
