Messages = new Meteor.Collection('messages')
Meteor.publish 'channel', (channel) ->
    if channel
        Messages.find(channel : channel)
