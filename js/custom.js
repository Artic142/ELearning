$(document).ready(function() {
  $(".card").hover(
    function() {
      $(this)
        .addClass("shadow")
        .css("cursor", "pointer");
    },
    function() {
      $(this).removeClass("shadow");
    }
  );

  $(window).scroll(function() {
    if ($(window).scrollTop() >= 600) {
      $(".navbar").css("background-color", "#225470");
    } else {
      $(".navbar").css("background-color", "transparent");
    }
  });

  $(function() {
    $("#playlist li").on("click", function() {
      $("#videoarea").attr({
        src: $(this).attr("movieurl")
      });
    });
    $("#videoarea").attr({
      src: $("#playlist li")
        .eq(0)
        .attr("movieurl")
    });
  });
});
