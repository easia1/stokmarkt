// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require('@rails/ujs').start();
require('turbolinks').start();
require('@rails/activestorage').start();
require('channels');

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

document.addEventListener('turbolinks:load', function (event) {
    const showNavbar = (
        toggleIdSide,
        toggleIdHeader,
        navId,
        bodyId,
        headerId
    ) => {
        const toggleSide = document.getElementById(toggleIdSide),
            toggleHeader = document.getElementById(toggleIdHeader),
            nav = document.getElementById(navId),
            bodypd = document.getElementById(bodyId),
            headerpd = document.getElementById(headerId);

        // Validate that all variables exist
        if (toggleSide && toggleHeader && nav && bodypd && headerpd) {
            toggleSide.addEventListener('click', () => {
                // show navbar
                nav.classList.toggle('show-sidebar');
                // change icon
                toggleSide.classList.toggle('bx-x');
                toggleHeader.classList.toggle('bx-x');
                // add padding to body
                bodypd.classList.toggle('body-pd');
                // add padding to header
                headerpd.classList.toggle('body-pd');
            });

            toggleHeader.addEventListener('click', () => {
                // show navbar
                nav.classList.toggle('show-sidebar');
                // change icon
                toggleSide.classList.toggle('bx-x');
                toggleHeader.classList.toggle('bx-x');
                // add padding to body
                bodypd.classList.toggle('body-pd');
                // add padding to header
                headerpd.classList.toggle('body-pd');
            });
        }
    };

    showNavbar(
        'header-toggle-side',
        'header-toggle-header',
        'nav-bar',
        'body-pd',
        'header'
    );

    // /*===== LINK ACTIVE =====*/
    // const linkColor = document.querySelectorAll('.nav_link');

    // function colorLink() {
    //     if (linkColor) {
    //         linkColor.forEach((l) => l.classList.remove('active'));
    //         this.classList.add('active');
    //     }
    // }
    // linkColor.forEach((l) => l.addEventListener('click', colorLink));

    // Your code to run since DOM is loaded and ready
});
