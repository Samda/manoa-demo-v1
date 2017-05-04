$(document).ready(function() {
  $('#messenger').on('click', function(e) {
    e.preventDefault();
    $('.messenger').addClass('open')
  })

  $('#btn-close').on('click', function(e) {
    $('.messenger').removeClass('open')
  })

  $('#video').on('click', function(e) {
    e.preventDefault();
    $('.video').addClass('open')
  })

  $('#close-video').on('click', function(e) {
    $('.video').removeClass('open')
  })
})

