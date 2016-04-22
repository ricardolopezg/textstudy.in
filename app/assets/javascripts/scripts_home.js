$(document).ready(function() {

  $(".scrollup").on("click", function(e) {
    e.preventDefault();
    $("html, body").animate({ scrollTop: 0}, 1000);
      // scrollTop: $(window).offset().top
    // }, 1000);
      return false;
    })

  $(".subjects_nav_link").on("click", function(e) {
    e.preventDefault();
    $("html, body").animate({
      scrollTop: $(".subjects_scroll").offset().top - 80
    }, 1000);
    }) 
 
  $(".pricing_nav_link").on("click", function(e) {
    e.preventDefault();
    $("html, body").animate({
      scrollTop: $(".pricing_scroll").offset().top - 40
    }, 1000);
    }) 

  $(".process_nav_link").on("click", function(e) {
    e.preventDefault();
    $("html, body").animate({
      scrollTop: $(".process_scroll").offset().top - 60
    }, 1000);
    })

$(".contact_nav_link").on("click", function(e) {
    e.preventDefault();
    $("html, body").animate({
      scrollTop: $(".contact_scroll").offset().top
    }, 1000);
    })



}) // end doc ready
