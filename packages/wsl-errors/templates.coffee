Template.errors.helpers
  errors: ->
    Errors.collection.find()

Template.error.rendered = ->
  error = @data
  Meteor.defer ->
    Errors.collection.update error._id, $set: seen: true
    return
  return