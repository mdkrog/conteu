$(function() {
  $('.cover-thumbnail').click(function(e){
    $(".cover-spread").attr('src',$(this).data("image-src"));
    $(".featured-issue-button-link").attr('href', '/issues/' + $(this).data("issue-number"));
    $(".featured-issue-button-link .btn-text").html('Read Issue ' + $(this).data("issue-number"));
  });
});

// (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
//   (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
//   m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
//   })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

//   ga('create', 'UA-41032983-5', 'auto');
//   ga('send', 'pageview');