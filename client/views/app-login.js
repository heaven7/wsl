Template.login.events({
    'submit form#login': function (event, template) {
        event.preventDefault();

        var email = template.$('[name=email]').val();
        var password = template.$('[name=password]').val();

        Meteor.loginWithPassword(email, password, function(error) {
            if (error) {
                sAlert.error(error.message);
                return false;
            }
            sAlert.success('Successfully logged in');
            Router.go('home');
        });
    }
})