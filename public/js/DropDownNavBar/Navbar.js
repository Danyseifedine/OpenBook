/*=============== SHOW MENU ===============*/
const showMenu = (toggleId, navId) => {
    const toggle = document.getElementById(toggleId),
        nav = document.getElementById(navId);

    toggle.addEventListener("click", () => {
        // Add show-menu class to nav menu
        nav.classList.toggle("show-menu");
        // Add show-icon to show and hide menu icon
        toggle.classList.toggle("show-icon");
    });
};

showMenu("nav-toggle", "nav-menu");

/*=============== SHOW DROPDOWN MENU ===============*/
const dropdownItems = document.querySelectorAll(".dropdown__item");

// 1. Select each dropdown item
dropdownItems.forEach((item) => {
    const dropdownButton = item.querySelector(".dropdown__button");

    // 2. Select each button click
    dropdownButton.addEventListener("click", () => {
        // 7. Select the current show-dropdown class
        const showDropdown = document.querySelector(".show-dropdown");

        // 5. Call the toggleItem function
        toggleItem(item);

        // 8. Remove the show-dropdown class from other items
        if (showDropdown && showDropdown !== item) {
            toggleItem(showDropdown);
        }
    });
});

// 3. Create a function to display the dropdown
const toggleItem = (item) => {
    // 3.1. Select each dropdown content
    const dropdownContainer = item.querySelector(".dropdown__container");

    // 6. If the same item contains the show-dropdown class, remove
    if (item.classList.contains("show-dropdown")) {
        dropdownContainer.removeAttribute("style");
        item.classList.remove("show-dropdown");
    } else {
        // 4. Add the maximum height to the dropdown content and add the show-dropdown class
        dropdownContainer.style.height = dropdownContainer.scrollHeight + "px";
        item.classList.add("show-dropdown");
    }
};

/*=============== DELETE DROPDOWN STYLES ===============*/
const mediaQuery = matchMedia("(min-width: 1118px)"),
    dropdownContainer = document.querySelectorAll(".dropdown__container");

// Function to remove dropdown styles in mobile mode when browser resizes
const removeStyle = () => {
    // Validate if the media query reaches 1118px
    if (mediaQuery.matches) {
        // Remove the dropdown container height style
        dropdownContainer.forEach((e) => {
            e.removeAttribute("style");
        });

        // Remove the show-dropdown class from dropdown item
        dropdownItems.forEach((e) => {
            e.classList.remove("show-dropdown");
        });
    }
};

addEventListener("resize", removeStyle);

document.addEventListener("DOMContentLoaded", function () {
    // Get the necessary elements
    const body = document.body;
    const themeIcon = document.getElementById("theme-icon");

    // Check if a user preference for theme mode exists in local storage
    const themePreference = localStorage.getItem("theme");

    // Apply the saved theme preference if it exists
    if (themePreference) {
        body.classList.add(themePreference);
        // Update the theme icon based on the saved theme
        themeIcon.classList.remove("ri-moon-line", "ri-sun-line");
        themeIcon.classList.add(
            themePreference === "dark" ? "ri-sun-line" : "ri-moon-line"
        );
    }

    // Function to toggle between theme modes
    function toggleThemeMode() {
        if (body.classList.contains("dark")) {
            body.classList.remove("dark");
            body.classList.add("light");
            themeIcon.classList.remove("ri-sun-line");
            themeIcon.classList.add("ri-moon-line");
            localStorage.setItem("theme", "light");
        } else {
            body.classList.remove("light");
            body.classList.add("dark");
            themeIcon.classList.remove("ri-moon-line");
            themeIcon.classList.add("ri-sun-line");
            localStorage.setItem("theme", "dark");
        }
    }

    // Event listener for toggling between dark and light modes
    document
        .getElementById("change-mode")
        .addEventListener("click", function (e) {
            toggleThemeMode();
            e.preventDefault();
        });
});

document.getElementById("nav");
window.addEventListener("load", function () {});

document.addEventListener("DOMContentLoaded", function () {
    const toggleRTLButtons = document.querySelectorAll(".toggle-rtl");
    const toggleLTRButtons = document.querySelectorAll(".toggle-ltr");

    toggleRTLButtons.forEach(function (button) {
        button.addEventListener("click", function (event) {
            document.body.classList.add("rtl-text");
            localStorage.setItem("textDirection", "rtl");
        });
    });

    toggleLTRButtons.forEach(function (button) {
        button.addEventListener("click", function (event) {
            document.body.classList.remove("rtl-text");
            localStorage.removeItem("textDirection");
        });
    });

    function applyTextDirection() {
        const textDirection = localStorage.getItem("textDirection");
        document.body.classList.remove("rtl-text");

        if (textDirection === "rtl") {
            document.body.classList.add("rtl-text");
        }
    }

    applyTextDirection();
});
//
//
//
//
//

// ======= lang menu ======= //

document.addEventListener("DOMContentLoaded", function () {
    const langMenu = document.querySelector(".lang-menu");

    langMenu.addEventListener("click", function () {
        const langOptions = document.querySelector(".lang-options");
        langMenu.classList.toggle("active");
        langOptions.style.display = langMenu.classList.contains("active") ?
            "block" :
            "none";
    });

    // Close the language menu when clicking outside of it
    document.addEventListener("click", function (event) {
        if (!langMenu.contains(event.target)) {
            langMenu.classList.remove("active");
            document.querySelector(".lang-options").style.display = "none";
        }
    });
});

// box shadow

const scrollHeader = () => {
    const header = document.getElementById('header')
    // When the scroll is greater than 50 viewport height, add the scroll-header class to the header tag
    this.scrollY >= 100 ? header.classList.add('scroll-header') :
        header.classList.remove('scroll-header')
}
window.addEventListener('scroll', scrollHeader)
