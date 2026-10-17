const moonSvgString = '<svg fill="black" class="h-6 w-6" viewBox="0 0 35 35" data-name="Layer 2" id="Layer_2" xmlns="http://www.w3.org/2000/svg"><path d="M18.44,34.68a18.22,18.22,0,0,1-2.94-.24,18.18,18.18,0,0,1-15-20.86A18.06,18.06,0,0,1,9.59.63,2.42,2.42,0,0,1,12.2.79a2.39,2.39,0,0,1,1,2.41L11.9,3.1l1.23.22A15.66,15.66,0,0,0,23.34,21h0a15.82,15.82,0,0,0,8.47.53A2.44,2.44,0,0,1,34.47,25,18.18,18.18,0,0,1,18.44,34.68ZM10.67,2.89a15.67,15.67,0,0,0-5,22.77A15.66,15.66,0,0,0,32.18,24a18.49,18.49,0,0,1-9.65-.64A18.18,18.18,0,0,1,10.67,2.89Z"/></svg>'
const sunSvgString = '<svg class="h-6 w-6" viewBox="0 0 24 24" fill="white" xmlns="http://www.w3.org/2000/svg"><path d="M3 12H5M5.00006 19L7.00006 17M12 19V21M17 17L19 19M5 5L7 7M19 12H21M16.9999 7L18.9999 5M12 3V5M15 12C15 13.6569 13.6569 15 12 15C10.3431 15 9 13.6569 9 12C9 10.3431 10.3431 9 12 9C13.6569 9 15 10.3431 15 12Z" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>'
const svg = Array.from(document.querySelectorAll('svg'));
const button = document.querySelector('.dark-mode-toggle');
window.onload = () => {
  if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
    document.body.classList.add('dark');
    svg.forEach(element => {
      element.setAttribute('fill', 'white');
    });
    button.innerHTML = sunSvgString;
  } else {
    button.innerHTML = moonSvgString;
  }
  button.addEventListener('click', function() {
    document.body.classList.toggle('dark');
    svg.forEach(element => {
      element.getAttribute('fill') === 'black' ? element.setAttribute('fill', 'white') : element.setAttribute('fill', 'black');
    });
    if (document.body.classList.contains('dark')) {
        button.innerHTML = sunSvgString;
      } else {
        button.innerHTML = moonSvgString;
      }
  });
};
function captchaCallback () {
  setTimeout(() => {
    document.querySelector('#captcha-form').submit();
  }, 500);
}