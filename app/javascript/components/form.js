pens = document.querySelectorAll("#update-pen")
sports_fields = document.querySelectorAll("#sports")

console.log(sports_fields)

pens.forEach((pen) => {
  pen.addEventListener("click", (event) => {
  a = event.target
  b = a.nextElementSibling
  b.classList.toggle("hidden")
})
});

  // sports_fields.classList.toggle("readonly")


