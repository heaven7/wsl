Package.describe({
    name: 'heaven7:wsl-notifier',
    summary: "WSL Notifier-Package",
    version: "0.0.1",
    git: ""
});

both = ['client','server']

Package.on_use(function (api) {
    api.versionsFrom("METEOR@1.0.1")

    api.use(['coffeescript'], both)

    api.use(['minimongo', 'mongo-livedata', 'templating'], 'client')

    api.addFiles([
        'templates.html',
        'wsl-notifier.coffee',
        'templates.coffee'
        ], 'client')

})
