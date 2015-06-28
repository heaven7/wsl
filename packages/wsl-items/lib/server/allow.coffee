
Items.allow
  update: (userId, doc, fields, modifier) ->
    userId == doc.owner
  remove: (userId, doc) ->
    userId == doc.owner