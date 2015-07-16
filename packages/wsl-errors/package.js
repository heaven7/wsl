Package.describe({
    name: 'heaven7:wsl-errors',
    summary: "WSL Errors-Package",
    version: "0.0.1",
    git: ""
});

both = ['client','server']

Package.on_use(function (api) {
    api.versionsFrom("METEOR@1.0.1");

    api.use(['minimongo', 'mongo-livedata', 'templating'], 'client')

    api.addFiles(['wsl-errors.coffee', 'templates.coffee', 'templates.html'], 'client')

    if (api.export)
      api.export('Errors', ['Client'])


})
