$(function() {
  $('.cover-thumbnail').click(function(e){
    $(".cover-spread").attr('src',$(this).data("image-src"));
    $(".featured-issue-button-link").attr('href', '/issues/' + $(this).data("issue-number"));
    $(".featured-issue-button-link .btn-text").html('Read Issue ' + $(this).data("issue-number"));
  });
});