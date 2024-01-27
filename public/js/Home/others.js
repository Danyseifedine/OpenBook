$(document).ready(function () {
    setTimeout(function () {
        $(".error").fadeOut("slow", function () {
            $(this).remove();
        });
    }, 4000);
});

// const swipeSoon = new Swiper(".soon__swiper", {
//     loop: true,
//     spaceBetween: -2400,
//     grabCursor: true,
//     slidesPerView: "auto",
//     centeredSlides: "auto",

//     autoplay: {
//         delay: 3000,
//         disableOnInteraction: false,
//     },

//     breakpoints: {
//         1500: {
//             spaceBetween: -12,
//         },
//     },
// });

// const swipeSoon_1 = new Swiper(".soon_1__swiper", {
//     loop: true,
//     spaceBetween: -2400,
//     grabCursor: true,
//     slidesPerView: "auto",
//     centeredSlides: "auto",

//     autoplay: {
//         delay: 1500,
//         disableOnInteraction: false,
//     },

//     breakpoints: {
//         1500: {
//             spaceBetween: -12,
//         },
//     },
// });

const sr = ScrollReveal({
    origin: "top",
    distance: "60px",
    duration: 2500,
    delay: 400,
    // reset: true
});

sr.reveal(`.home__data`);
sr.reveal(`.home__images`, {
    delay: 600,
});

sr.reveal(`.services__card`, { interval: 100 });
sr.reveal(`.services__card`, { interval: 100 });

// sr.reveal(`.discount__data`, { origin: 'left' });
// sr.reveal(`.discount__images`, {origin:'right'});

$(document).ready(function () {
    // Subject validation
    $("#grid-email").keyup(function () {
        var subject = $(this).val();
        var isValid = /^[a-zA-Z0-9\s!?\u0600-\u06FF]+$/.test(subject);

        if (subject.length < 3 || subject.length > 20 || !isValid) {
            // Show error message or apply styling for invalid input
            // For example, you can add a class to highlight the input
            $(this).addClass("border border-red-500");
        } else {
            // Remove any previous error styling
            $(this).removeClass("border border-red-500");
        }
    });

    // Message validation
    $("#grid-password").keyup(function () {
        var message = $(this).val();
        var isValid = /^[a-zA-Z0-9\s!?\u0600-\u06FF]+$/.test(message);

        if (message.length < 10 || message.length > 200 || !isValid) {
            // Show error message or apply styling for invalid input
            // For example, you can add a class to highlight the input
            $(this).addClass("border border-red-500");
        } else {
            // Remove any previous error styling
            $(this).removeClass("border border-red-500");
        }
    });
});

$(".autoplay").slick({
    centerMode: true,
    slidesToShow: 3,
    arrows: false,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 1000,
    responsive: [
        {
            breakpoint: 768,
            settings: {
                arrows: false,
                centerMode: true,
                centerPadding: "40px",
                slidesToShow: 3,
            },
        },
        {
            breakpoint: 480,
            settings: {
                arrows: false,
                centerPadding: "80px",
                slidesToShow: 1,
            },
        },
    ],
});

$(".autoplay_2").slick({
    centerMode: true,
    slidesToShow: 3,
    arrows: false,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 1500,
    responsive: [
        {
            breakpoint: 768,
            settings: {
                arrows: false,
                centerMode: true,
                centerPadding: "40px",
                slidesToShow: 3,
            },
        },
        {
            breakpoint: 480,
            settings: {
                arrows: false,
                centerPadding: "80px",
                slidesToShow: 1,
            },
        },
    ],
});
