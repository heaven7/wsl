Meteor.methods
  newItem: (doc)->
    check(doc, Schemas.Items)
    @unblock()
    Items.insert doc, (error)->
      if error
        console.log "Method error: " + error
  updateItem: (doc)->
    check(doc, Schemas.Items)
    @unblock()
    console.log(JSON.stringify(doc))
    res = Items.update({_id: doc._id}, {doc})
    console.log('update: ' + res)
  deleteItem: (doc)->
    @unblock()
    Items.remove({_id: doc._id})
