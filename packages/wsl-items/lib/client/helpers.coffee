Meteor.subscribe('items')

AutoForm.hooks insertItemForm:
  onError: (insert, error, template) ->
  #  console.log error

  onSuccess: (insert, doc)->
    console.log("Item inserted: " + doc)



