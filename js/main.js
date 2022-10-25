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
  var nav_mobile = document.getElementById("nav-mobile");
  nav_mobile.classList.toggle("show");
  var modal = document.getElementById("modal-mobile");
  modal.classList.toggle("show");
}

$(window).on("load", function (event) {
  $("body").removeClass("preloading");
  $(".loader").delay(200).fadeOut("fast");
});

var link_image =
  "https://lennguyenmedia.com/wp-content/uploads/2021/10/diem-hen-du-lich-anh-dai-dien.jpg";
var link = "https://namdinhweb.net/";
var icon_close = "https://namdinhweb.net/wp-content/uploads/2018/07/0-15.png";
function closePopupBeta() {
  document.getElementById("popup_banner_beta").remove(),
    setCookie("showPopupBannerBeta", 1, 1);
}

function setCookie(e, n, o) {
  var t = "";
  if (o) {
    var i = new Date();
    i.setTime(i.getTime() + 24 * 60 * 60 * 1000),
      (t = "; expires=" + i.toUTCString());
  }
  document.cookie = e + "=" + (n || "") + t + "; path=/";
}
function getCookie(e) {
  for (
    var n = e + "=", o = document.cookie.split(";"), t = 0;
    t < o.length;
    t++
  ) {
    for (var i = o[t]; " " == i.charAt(0); ) i = i.substring(1, i.length);
    if (0 == i.indexOf(n)) return i.substring(n.length, i.length);
  }
  return null;
}
1 != getCookie("showPopupBannerBeta") &&
  document.addEventListener("DOMContentLoaded", function (event) {
    var e =
      '<div id="popup_banner_beta"><div onclick="closePopupBeta()" class="mask_popup_banner_beta"></div><div class="content_popup_banner_beta"><img src="' +
      icon_close +
      '" class="close_icon" onclick="closePopupBeta()" alt="Close Image"><a href="' +
      link +
      '"><img src="' +
      link_image +
      '" alt="Image Popup Banner"/></a></div></div>';
    setTimeout(function () {
      document.body.innerHTML += e;
    }, 5000);
  });
