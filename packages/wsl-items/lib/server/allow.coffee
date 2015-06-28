
Items.allow
  insert: (userId, doc) ->
   # userId == doc.owner
    true
  update: (userId, doc, fields, modifier) ->
    userId == doc.owner
  remove: (userId, doc) ->
    userId == doc.owner