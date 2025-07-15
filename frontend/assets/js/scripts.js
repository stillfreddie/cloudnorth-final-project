console.log('CloudNorth scripts loaded');

// Smooth scroll for internal page anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function(e) {
    e.preventDefault();
    const target = document.querySelector(this.getAttribute('href'));
    if(target) {
      target.scrollIntoView({ behavior: 'smooth' });
    }
  });
});

// Simple Add to Cart button handler example
document.querySelectorAll('button').forEach(btn => {
  btn.addEventListener('click', () => {
    alert('Added to cart! (Functionality coming soon)');
  });
});