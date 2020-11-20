import Typed from 'typed.js';

const options = {
  strings: [
  'Find art in every corner',
  "Visit your neighbour's seashell collection",
  "Discover unexpected wonders",
  "Exchange with crazy enthusiasts",
  'We can use Typed.js too'],
  typeSpeed: 80,
  loop: true
};


const initTyped = () => {
  const typedElement = document.getElementById('typed')
  const typed = new Typed(typedElement, options);
};

export { initTyped };
