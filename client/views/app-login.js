Template.login.events({
    'submit form#login': function (event, template) {
        event.preventDefault();

        var email = template.$('[name=email]').val();
        var password = template.$('[name=password]').val();

        Meteor.loginWithPassword(email, password, function(error) {
            if (error) {
                Notifications.throw(error.message, 'error');
                return false;
            }
            Notifications.throw('Successfully logged in', 'success');
            Router.go('home');
        });
    }
})