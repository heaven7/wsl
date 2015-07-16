@Errors =
  collection: new (Mongo.Collection)(null),
  throw: (message)->
    Errors.collection.insert
      message: message
      seen: false
    return
  ,
  clearSeen: ->
    Errors.collection.remove seen: true
    return
