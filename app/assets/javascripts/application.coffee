$ ->
  $('img.slide-image').hide()
  $('img.slide-image:first').show()
  $('img.slide-image:first').addClass 'active'

  $('.prev-slide').click ->
    current = $('img.slide-image.active')
    current.hide()
    current.removeClass 'active'
    current.prev('img.slide-image').show()
    current.prev('img.slide-image').addClass 'active'

  $('.next-slide').click ->
    current = $('img.slide-image.active')
    current.hide()
    current.removeClass 'active'
    current.next('img.slide-image').show()
    current.next('img.slide-image').addClass 'active'
