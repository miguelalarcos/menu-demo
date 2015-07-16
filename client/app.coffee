Template.menu.helpers
  color: -> Please.make_color()[0]
  isPhone: ->
    if Meteor.Device.isPhone()
      'is-phone'
    else
      ''
Template.menu.events
  'click .close': (e, t) ->
    $('.menu.active').removeClass('active')
  'click .menu div': (e,t) ->
    next = $(e.target).attr('next')
    if next
      $('.menu.active').removeClass('active')
      $('.menu.'+next).addClass('active')

Template.body.events
  'click .show': (e,t) ->
    $('.menu.first').addClass('active')

Template.menu.onRendered ->
  $(this.findAll('.nano')).nanoScroller(scroll: 'top')