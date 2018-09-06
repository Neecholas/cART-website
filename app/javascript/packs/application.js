import "bootstrap";

document.addEventListener("DOMContentLoaded", function(event) {
    let alert = document.querySelector(".alert")
    if (alert) {
      setTimeout(() => {
        alert.style.transition = "all ease 1.5s";
        alert.style.transform = "translateX(500px)";
      }, 3000)
      setTimeout(() => {
        alert.style.display = "none";
      }, 3500)
    }
  });
