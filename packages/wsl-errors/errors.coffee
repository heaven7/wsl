Errors =
  collection: new (Meteor.Collection)(null)
  throw: (message) ->
    Errors.collection.insert
      message: message
      seen: false
    return
  clearSeen: ->
    Errors.collection.remove seen: true
    return