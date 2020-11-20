import Typed from 'typed.js';

const options = {
  strings: [
  'Find art in <strong>surprising places </strong> <i class="fas fa-paint-brush"> ',
  "Visit your neighbour's incredible <strong>fish collection</strong> <i class='fas fa-fish'>",
  "Discover unexpected <strong>wonders</strong> <i class='fas fa-archway'></i>",
  "Exchange with crazy <strong>enthusiasts</strong> <i class='far fa-laugh-squint'></i>",
  'We can use Typed.js too'],
  typeSpeed: 80,
  loop: true,
  backSpeed: 20,
};


const initTyped = () => {
  const typedElement = document.getElementById('typed')
  const typed = new Typed(typedElement, options);
};

export { initTyped };
