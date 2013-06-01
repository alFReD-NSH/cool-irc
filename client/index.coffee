window.Messages = new Meteor.Collection('messages')

Template.chatTemplate.messages = ->
    Messages.find()

Meteor.subscribe('channel', 'default')

$ ->
    $('#channel').keyup (event) ->
        value = event.target.value
        if (value)
            Meteor.subscribe('channel', value)
