Router.route('/', {
    subscription: function() {
        return Meteor.subscribe('items')
    },
    action: function() {
        this.render('home');
    }

});

