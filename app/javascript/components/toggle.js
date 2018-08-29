let button = document.querySelector('.slider')
let label = document.querySelector('.switch-label')


function toggle() {button.addEventListener('click', event => {
  console.log('hello');
  label.classList.toggle('orange');
})};

export { toggle };
