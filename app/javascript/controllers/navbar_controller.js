import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {  
  connect() {
  }
  
  updateNavbar() {
    let navbarClass = [];
    if (window.scrollY >= window.innerHeight) {
      navbarClass = document.querySelectorAll(".nav-item-hp");
      this.element.classList.add("navbar-lewagon-peach")
      document.getElementById('logo-navbar-hp').src = 'assets/logo-dark-teal.png';
      navbarClass.forEach(function(e) {
        e.classList.remove("nav-item-hp");
        e.classList.add("nav-item");
      })

    } else {
      navbarClass = document.querySelectorAll(".nav-item");
      this.element.classList.remove("navbar-lewagon-peach")
      document.getElementById('logo-navbar-hp').src = "assets/logo-peach.png";
      Array.from(navbarClass).map((e) => {
        e.classList.remove("nav-item");
        e.classList.add("nav-item-hp");
      })
    }
    }
}




// console.log(this.document.querySelector('li.nav-item-hp'));
      // console.log(document.getElementsByClassName("nav-item-hp"));