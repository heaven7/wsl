Meteor.methods({
    createWSLUser: function(user) {
        Accounts.createUser({
            username: user.username,
            email: user.email,
            password: user.password
        })
    }
})