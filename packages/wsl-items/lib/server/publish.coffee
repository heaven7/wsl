Meteor.publish('items', function() {
    return Items.find({
        owner: this.userId;
    });
})