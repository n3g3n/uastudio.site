document.addEventListener("DOMContentLoaded", function(event) {


  /* Clicking the navbutton toggles the navmenu
  and changes the navbutton's name */
  document.getElementById("nav-button").onclick = function() {
      const elem = document.getElementById("nav-menu");
      elem.classList.toggle("shown");
      const button = document.getElementById("menu-close");
      if (button.innerHTML == "MENU") {
          button.innerHTML = "CLOSE";
      } else {
          button.innerHTML = "MENU";
      }
  }

  /* Hide all dropdown submenus */
  function hideDrops(dropdowns) {
      for (i = 0; i < dropdowns.length; i++) {
          let openDropdown = dropdowns[i];
          if (openDropdown.classList.contains('shown')) {
              openDropdown.classList.remove('shown');
          }
      }
  }

  /* Clicking a subbutton hides its submenu */
  function drop(id) {
      const elem = document.getElementById(id);
      const dropdowns = document.getElementsByClassName("dropmenu");
      if (document.documentElement.clientWidth < 768) {
          if (elem.classList.contains("shown")) {
              hideDrops(dropdowns);
          }
          else {
              hideDrops(dropdowns);
              elem.classList.toggle("shown");
          }
      }
  }


  
});
