Session.set 'show', false

Template.menu.helpers
  color: -> Please.make_color()[0]
  isPhone: ->
    if Meteor.Device.isPhone()
      'is-phone'
    else
      ''

#Template.body.helpers
#  showMenu: -> Session.get 'show'

Template.menu.events
  'click .close': (e, t) ->
    #Session.set 'show', false
    $('.menu.active').removeClass('active')
  'click .menu div': (e,t) ->
    next = $(e.target).attr('next')
    if next
      $('.menu.active').removeClass('active')
      $('.menu.'+next).addClass('active')

Template.body.events
  'click button': (e,t) ->
    #Session.set('show', not Session.get('show'))
    #Meteor.setTimeout((-> $('.menu.first').addClass('active')), 1)
    $('.menu.first').addClass('active')

Template.menu.onRendered ->
  $('.nano').nanoScroller(scroll: 'top')