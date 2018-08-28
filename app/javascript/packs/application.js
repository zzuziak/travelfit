import "bootstrap";

import "../plugins/flatpickr";

import $ from 'jquery';
global.$ = jQuery;
global.jQuery = jQuery;

import "bootstrap";

import "../plugins/flatpickr";


let arrow = document.getElementById("arrow-1");

if (arrow) { arrow.addEventListener("click", event => {
  document.getElementById("sport-1").scrollBy(300,0);
})};

arrow = document.getElementById("arrow-2");

if (arrow) { arrow.addEventListener("click", event => {
  document.getElementById("sport-2").scrollBy(300,0);
})};

arrow = document.getElementById("arrow-3");

if (arrow) { arrow.addEventListener("click", event => {
  document.getElementById("sport-3").scrollBy(300,0);
})};

arrow = document.getElementById("arrow-4");

if (arrow) { arrow.addEventListener("click", event => {
  document.getElementById("sport-4").scrollBy(300,0);
})};

arrow = document.getElementById("arrow-5");

if (arrow) { arrow.addEventListener("click", event => {
  document.getElementById("sport-5").scrollBy(300,0);
})};

arrow = document.getElementById("arrow-6");

if (arrow) { arrow.addEventListener("click", event => {
  document.getElementById("sport-6").scrollBy(300,0);
})};

// map scroll down

let btn = document.getElementById("btn-map");
if (btn) {btn.addEventListener("click", event => {
  document.querySelector('#map').scrollIntoView({
    behavior: 'smooth'
  });
})};

// show reply form

function listenReplyButton() {
  const posts = document.querySelectorAll('.post-with-reply')
  posts.forEach((post) => {
    const button = post.querySelector('button.reply-btn')
    button.addEventListener("click", (event) => {
      console.log(event.currentTarget);
      console.log(post)
      const form = post.querySelector(".show-reply")
      form.classList.toggle("visible")
      // event.currentTarget.parentNode.parentNode.parentElement.nextElementSibling.classList.toggle("visible");
    });
  });
}

listenReplyButton();

// navbar hide on scroll

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();


$(document).ready(function(){
  $(".category-choice").click(function(){
    $(this).toggleClass("active");
  });
});
