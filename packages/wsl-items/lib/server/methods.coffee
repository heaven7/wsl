Meteor.methods
  newItem: (doc)->
    # check(doc, Schemas.Items)
    @unblock()
    console.log('newItem: ' + doc)
    Items.insert(doc, (error)->
      if(error)
        console.log "Method error: " + error
      console.log('Item inserted ' + Items.find().count())
    )