$(function() {
  $('.cover-thumbnail').click(function(e){
    $(".cover-spread").attr('src',$(this).data("image-src"));
    $(".featured-cover-link").attr('href', '/issues/' + $(this).data("issue-number"));
    $(".featured-issue-button-link").attr('href', '/issues/' + $(this).data("issue-number"));
    $(".featured-issue-button-link .btn-text").html('Read Issue ' + $(this).data("issue-number"));
  });
});

$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});