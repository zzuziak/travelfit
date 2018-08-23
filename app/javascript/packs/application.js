import "bootstrap";

// import "../plugins/flatpickr";


import $ from 'jquery';

global.$ = jQuery;
global.jQuery = jQuery;

//
// let i = 0;
// for (i = 0; i < 100; i++) {
//
//   let arrow = document.getElementById(`arrow-${i}`);
//   if (arrow) { arrow.addEventListener("click", event => {
//   document.getElementById(`sport-${i}`).scrollBy(200,0);
// })};
// }


document.getElementById("arrow-1").addEventListener("click", event => {
  document.getElementById("sport-1").scrollBy(300,0);
});

let arrow = document.getElementById("arrow-2");

if (arrow) { arrow.addEventListener("click", event => {
  document.getElementById("sport-2").scrollBy(300,0);
})};

document.getElementById("arrow-3").addEventListener("click", event => {
  document.getElementById("sport-3").scrollBy(300,0);
});

document.getElementById("arrow-4").addEventListener("click", event => {
  document.getElementById("sport-4").scrollBy(300,0);
});

document.getElementById("arrow-5").addEventListener("click", event => {
  document.getElementById("sport-5").scrollBy(300,0);
});

document.getElementById("arrow-6").addEventListener("click", event => {
  document.getElementById("sport-6").scrollBy(300,0);
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
