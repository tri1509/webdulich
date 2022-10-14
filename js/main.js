$(document).ready(function () {
  $(".img-slider").slick({
    slidesToShow: 5, // số phần tử
    slidesToScroll: 1, //dich chuyển 1 phần tử
    infinite: true, //lặp
    autoplay: true,
    autoplaySpeed: 2000,
    prevArrow: "<i class='fa-solid fa-angle-left container-item-nav'></i>",
    nextArrow: "<i class='fa-solid fa-angle-right container-item-nav'></i>",
    responsive: [
      {
        breakpoint: 1200,
        settings: {
          slidesToShow: 4,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 766,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
        },
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
    ],
  });
});

var offset = 500;
var duration = 100;
$(function () {
  $(window).scroll(function () {
    if ($(this).scrollTop() > offset) $("#top-up").fadeIn(duration);
    else $("#top-up").fadeOut(duration);
  });
  $("#top-up").click(function () {
    $("body,html").animate(
      {
        scrollTop: 0,
      },
      duration
    );
  });
});

$(document).ready(function () {
  jQuery("#mainSlider").nivoSlider({
    directionNav: false,
    animSpeed: 500,
    effect: "random",
    slices: 18,
    pauseTime: 5000,
    pauseOnHover: false,
    controlNav: false,
  });
});

window.onscroll = function () {
  myFunction();
};

var header_bottom = document.getElementById("header-bottom");
var sticky = header_bottom.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    header_bottom.classList.add("sticky");
  } else {
    header_bottom.classList.remove("sticky");
  }
}

function navMobile() {
  var element = document.getElementById("nav-mobile");
  element.classList.toggle("show");
}
