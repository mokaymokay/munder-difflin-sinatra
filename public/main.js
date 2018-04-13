const sectionTeam = document.getElementById('team');
const sectionAbout = document.getElementById('about-us');
const sectionClients = document.getElementById('clients');

function scrollAppear(pixels, section) {
  if (window.scrollY > pixels) {
    section.className = 'show';
  } else {
    section.className = 'fade';
  }
}

window.addEventListener('scroll', function() {
  scrollAppear(600, sectionTeam);
  scrollAppear(1400, sectionAbout);
  scrollAppear(2200, sectionClients);
});

const lightbulb = document.getElementById('lightbulb');

window.addEventListener('load', function () {
  lightbulb.className = 'flicker-in-1';
});
