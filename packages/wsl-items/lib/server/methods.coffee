Meteor.methods
  newItem: (doc)->
    check(doc, Schemas.Items)
    @unblock()
    Items.insert doc, (error)->
      if error
        console.log "Method error: " + error
  updateItem: (doc)->
    Items.update({_id: doc._id}, {$set: doc })
  deleteItem: (doc)->
    Items.remove({_id: doc._id})
