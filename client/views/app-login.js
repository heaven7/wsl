Template.login.events({
    'submit form#login': function (event, template) {
        event.preventDefault();
        console.log('form submitted');
        var email = template.$('[name=email]').val();
        var password = template.$('[name=password]').val();

        Meteor.loginWithPassword(email, password, function(error) {
            if (error) {
                console.log(error);
                return false;
            }
            console.log('logged in');
            Router.go('home');
        });
    }
})