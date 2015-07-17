Display =
  initialize: (all, first)->
    all.hide()
    first.show()
    first.addClass 'active'
    $('.current-page').text first.data 'page'
    $('.total-page').text all.length
  change: (current, future)->
    current.hide()
    current.removeClass 'active'
    future.show()
    future.addClass 'active'
    $('.current-page').text future.data 'page'

$ ->
  img = 'img.slide-image'
  all = $(img)
  first = $("#{img}:first")
  Display.initialize(all, first)

  $('.prev-slide').click ->
    current = $("#{img}.active")
    prev = current.prev(img)    
    return unless prev.length
    Display.change(current, prev)

  $('.next-slide').click ->
    current = $("#{img}.active")
    next = current.next(img)
    return unless next.length
    Display.change(current, next)
