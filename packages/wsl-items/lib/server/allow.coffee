
Items.allow
  update: (userId, doc, fields, modifier) ->
    #userId == doc.owner
    true
  remove: (userId, doc) ->
    userId == doc.owner