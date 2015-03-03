$(".toggleTopRSVP").on("click", function() {
  $("body").addClass("rsvpShow");
});

$(".removeTopRSVP").on("click", function() {
  $("body").removeClass("rsvpShow");
});


$(document).ready(function($, window){

  var $w = $(window);
  var $body = $('body');
  var tk = {
      setup : {
          test : function() {
              return true;
          },
          run : function() {

          }
      },
      navScroll : {
          test : function() {
              return true;
          },
          run : function() {
              var $header = $('.site__header');
              $w.on('scroll', function(e){
                  if ($w.scrollTop() > 50){
                      $body.addClass('scrolled');
                  } else {
                      $body.removeClass('scrolled');
                  }
              });
          }
      }
  };

  for (var key in tk){
      if (tk[key].test()){
          console.log(key);
          tk[key].run();
      }
  }

}(jQuery, window));

$(".owl-carousel").owlCarousel({
  autoPlay : true,
  slideSpeed : 800,
  paginationSpeed : 800,
  singleItem:true
});

// smoothScroll.init({
//   offset: 71
// });
