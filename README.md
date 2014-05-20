# t2-projects

The t2-projects project is one of a series of clients that makes use of the [T2 API](https://github.com/neo/t2-api) to
show information we need to manage our business.  In particular, this app displays an interface for... (TODO: @mikedoel)

## Contributing

This is an [ember.js](http://emberjs.com) application that uses [ember-cli](http://iamstef.net/ember-cli/) as a build tool.
And as mentioned above, it uses the [T2 API](https://github.com/neo/t2-api).  So, there's a bit to do to get going with a local build.

### Get the API up and running

The first thing to do is to clone the T2 API project locally and get it up and running.  Details for how to do
that are in the [README for that project](https://github.com/neo/t2-api) and outside the scope of this README.  Note that you need both the API (usually started via foreman and running on port 5000) and the t2-utilization app (port 9001) to execute the project locally.

### Install node, npm, and ember-cli

You'll need to have a reasonably modern version of [node.js](http://nodejs.org/) installed.

```bash
brew install node
npm install -g ember-cli
npm install
```

### Install vendor packages
```bash
bower install
```

We use `broccol-ruby-sass` for sass compilation, so you'll need the sass gem to be installed.

```bash
gem install sass -v 3.3.7
```

### Fire it up

```
ember serve --port 9001
```

And then visit the page at [localhost:9001](http://localhost:9001) to verify that it works.


## Deployment

* Add your public key to `~/.ssh/authorized_keys` via the `neo` user at `t2static.neo.com`.
* Run `ember build --env production`

### Production

* Run `scp -r dist/* neo@t2static.neo.com:/var/www/t2projects.neo.com`

### Staging

* **Known Issue**: Edit `dist/index.html`'s `ENV.apiHost` to be `t2-staging.neo.com` rather than `t2.neo.com`
* Run `scp -r dist/* neo@t2static.neo.com:/var/www/t2projects-staging.neo.com`


