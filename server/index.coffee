Messages = new Meteor.Collection('messages')
irc = Meteor.require 'irc'
clients = {}
Meteor.publish 'channel', (channel, nick) ->
    if channel && nick
        listen channel, nick
        Messages.find(channel : channel)
listen = (channel, nick) ->
    console.log(channel, nick)
    client = clients[nick] = new irc.Client 'chat.freenode.net', nick, {
        channels : [channel]
    }
    client.on 'error', console.log
    client.on 'message', (from, to, message) ->
        console.log(from, to, message)
        Fiber(->
            Messages.insert {
                from,
                message
                channel : to,
            }
        )
