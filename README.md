# Git Node
A super powerfull 💪💪, blazingly fast 🚀🚀, node.js API 🔥🔥. 100% open source.

## What is it about?
This app allows you to build a very simple yet powerful API using node, here are some of the features included :
- Very fast response time
- Automatic https
- RESTful
- Automatic caching
- Real-time communication
- Automatic CORS
- Easy configuration

## How to install?
- Install it with `npm install @Spacelocust/git-node` OR `yarn add @Spacelocust/git-node`.
- A config will be auto-generated in `config/git-node.json`. Make sure to review it and change it according to your needs.
- You're good to go!

## How does it work?
### The config
The config happens in `config/git-node.json`.
```yaml
{
    "cors": true,       # whether to use default CORS policies or not
    "fast": true,       # whether to be fast 🚀🚀🚀🚀🚀🚀 or not
    "cache": true,      # whether to enable automatic caching or not
    "real-time": true,  # whether to allow automatic configuration of real-time communication
    "port": 443         # the port to listen to
}
```

### In your app

Import `init` and then `createApiRoute` from `@Spacelocust/git-node`.

```js
import { init, createApiRoute } from '@Spacelocust/git-node';

init(); // You can pass an argument to specify where the default config is, defaults to : config/git-node.json

const callback = (request, response) => {
    response.send('This is my first route!');

    return response;
};

const options = { cors: false }; // Will use the default config, but the "cors" option will be overridden and set to false

createApiRoute('/your-route', callback, options);
```
The first argument is required and is the uri of your route. Must be a string.

The second argument is a callback containing everything you need to do. You will be provided with a `Request` and a `Response` object (the same as node.js uses). You **must** return a `Response` object.

The third argument is optional and allows you to change the config defined by default in `config/git-node.json`. Must be an object.

If you now request `localhost/your-route`, you will get a response containing 'This is my first route!'.

## Make commands
List of the available make commands.

| Command  | Description                                          |
|----------|------------------------------------------------------|
| start    | Build the containers and run them in the background  |
| up       | Run the containers in the background                 |
| stop     | Stop the running containers                          |
| down     | Stop and remove the containers                       |
| ssh      | Run sh into the api container                        |
| lint     | Run the linter in the api container                  |

## How long until 1.0?
See the [1.0 milestone](https://github.com/Spacelocust/git-node/milestone/1).

## How can I contribute?
See [contributing](CONTRIBUTING.md).

## Is there anything else I need to know?
Make sure to also check the [code of conduct](CODE_OF_CONDUCT.md) if not already done 😉.

## What do you recommend using for the front app with this API?
[Svelte](https://github.com/sveltejs/svelte) 🔥.

## Important note
This is not a real project. This is a git project to show use of good practices.
