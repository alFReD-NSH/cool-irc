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
        port : 6665
        channels : [channel]
    }
    client.on 'error', console.log.bind(console, 'osdf')
    client.on 'message', Meteor.bindEnvironment (from, to, message) ->
        console.log(from, to, message)
        Messages.insert {
            from,
            message
            channel : to.toLowerCase(),
        }
    console.log(channel, nick, 'fuck')
