@Notifications =
  collection: new (Mongo.Collection)(null),
  throw: (message, type)->
    Notifications.collection.insert
      message: message
      type: type
      seen: false
    return
  ,
  clearSeen: ->
    Notifications.collection.remove seen: true
    return
