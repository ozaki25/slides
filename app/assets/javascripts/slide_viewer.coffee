Display =
  initialize: (all, first)->
    all.hide()
    first.show()
    first.addClass 'active'
    $('.current-page').text 1
    $('.total-page').text all.length
    $('.prev').addClass 'disabled'
  change: (current, future, all)->
    current.hide()
    current.removeClass 'active'
    future.show()
    future.addClass 'active'
    $('.current-page').text future.data 'page'
    $('.prev, .next').removeClass 'disabled'
    $('.prev').addClass 'disabled' if future.data('page') is 1
    $('.next').addClass 'disabled' if future.data('page') is all.length

$ ->
  img = 'img.slide-image'
  all = $(img)
  first = $("#{img}:first")
  Display.initialize(all, first)

  $('.prev').click ->
    current = $("#{img}.active")
    prev = current.prev(img)
    return unless prev.length
    Display.change(current, prev)

  $('.next').click ->
    current = $("#{img}.active")
    next = current.next(img)
    return unless next.length
    Display.change(current, next)
