Template.notifications.helpers
  notifications: ->
    Notifications.collection.find()

Template.notification.rendered = ->
  notification = @data
  Meteor.defer ->
    Notifications.collection.update notification._id, $set: seen: true
    return
  return