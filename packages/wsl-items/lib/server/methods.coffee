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
    if(Items.update({id: this._id}, {$set: doc}))
      console.log('update successful')
      true

  deleteItem: (doc)->
    @unblock()
    Items.remove({_id: doc._id})
