Template.itemsList.helpers
  items: ->
    tItems = Items.find()
    if(tItems.count() == 0)
      false
    else
      tItems