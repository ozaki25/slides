Display =
  initialize: (all, first)->
    all.hide()
    first.show()
    first.addClass 'active'
  change: (current, future)->
    current.hide()
    current.removeClass 'active'
    future.show()
    future.addClass 'active'
PageNum =
  change: (page)->
    $('.current-page').text page

$ ->
  img = 'img.slide-image'
  all = $(img)
  first = $("#{img}:first")

  Display.initialize(all, first)
  PageNum.change(first.data 'page')

  $('.prev-slide').click ->
    current = $("#{img}.active")
    prev = current.prev(img)    
    return unless prev.length
    Display.change(current, prev)
    PageNum.change(prev.data 'page')

  $('.next-slide').click ->
    current = $("#{img}.active")
    next = current.next(img)
    return unless next.length
    Display.change(current, next)
    PageNum.change(next.data 'page')
