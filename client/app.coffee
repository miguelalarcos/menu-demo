Session.set 'show', true

Template.menu.helpers
  color: -> Please.make_color()[0]
  isPhone: ->
    if Meteor.Device.isPhone()
      'is-phone'
    else
      ''

Template.body.helpers
  showMenu: -> Session.get 'show'

Template.menu.events
  'click li': (e,t) ->
    next = $(e.target).attr('next')
    if next
      $('.menu.active').removeClass('active')
      $('.menu.'+next).addClass('active')

Template.body.events
  'click button': (e,t) ->
    Session.set('show', not Session.get('show'))