Template.notifications.helpers
  notifications: ->
    Notifications.collection.find()

Template.notification.rendered = ->
  notification = @data
  Meteor.defer ->
    Notifications.collection.update error._id, $set: seen: true
    return
  return