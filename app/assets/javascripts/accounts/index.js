$(document).on('click', '#messenger', function(e) {
  e.preventDefault();
  $('.messenger').addClass('open')
})

$(document).on('click', '#btn-close', function(e) {
  $('.messenger').removeClass('open')
})

$(document).on('click', '#video', function(e) {
  e.preventDefault();
  $('.video').addClass('open')
})

$(document).on('click', '#close-video', function(e) {
  $('.video').removeClass('open')
})

