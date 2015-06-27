Meteor.startup ->
  if(Items.find().count() == 0)
    Items.insert({

    })

