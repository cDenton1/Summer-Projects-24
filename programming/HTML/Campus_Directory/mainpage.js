document.addEventListener("DOMContentLoaded", function() {
    var homeLink = document.getElementById("home-link");
    var aboutDropdown = document.getElementById("...1");
    var dropdownItems = aboutDropdown.getElementsByTagName("a");
    
    homeLink.addEventListener("click", function(event) {
        event.preventDefault(); // Prevent the default behavior of anchor tags
        window.location.href = "http://127.0.0.1:5500/Campus%20Directory/mainpage.html";
    });

    // Add event listeners to dropdown items
    for (var i = 0; i < dropdownItems.length; i++) {
        dropdownItems[i].addEventListener("click", function(event) {
            event.preventDefault(); // Prevent the default behavior of anchor tags
            
            // Get the text of the clicked item
            var selectedItemText = this.textContent;
            
            if (selectedItemText === "Southern Alberta Institute of Technology") {
                window.location.href = "http://127.0.0.1:5500/Campus%20Directory/saitpage.html";
            } 
            
            else if (selectedItemText === "University of Calgary") {
                aboutDropdown.textContent = "UofC/"
            }

            else if (selectedItemText === "Mount Royal University") {
                aboutDropdown.textContent = "MRU/"
            }

        });

    }

});
