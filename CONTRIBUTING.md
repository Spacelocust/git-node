# Contributing to the project
Guide to contribute.

## How to contribute?
You should always create a new branch, with an explicit name, and create a pull request once done. Your PR should always point towards the [develop](https://github.com/Spacelocust/git-node/tree/develop) branch.

## Prerequisites
- [Docker](https://www.docker.com/) (with Docker Compose).
- [Git](https://git-scm.com/).
- Preferably use [yarn](https://yarnpkg.com/).
- Knowing what you're doing.

## Launch the project locally
- Clone the project with `git@github.com:Spacelocust/git-node.git`.
- Switch to the `develop` branch and create your own (eg: `feature/routes`).
- Launch the project using `make start` if you have Make installed, or `docker compose build && docker compose up -d` otherwise.
- Go to `localhost:3000` to see a working example!
- From there, you can add your own code and tests in the appropriate folders.
⚠️ You are required to use Docker ⚠️

## What do I need to check before making a PR?
Make sure of the following :
- Your PR is up to date with its parent branch
- Your PR includes tests (not always needed but is very recommended)
- Your PR describes everything the reviewers need to know.
- Your PR follows the [code of conduct](CODE_OF_CONDUCT.md).
- The linter does not fail (or at least not because of your PR).

## Good to know
Your PR will always be checked as soon as possible. You need to make sure you do everything you can do to make it easier to review it.

You can look at other PRs if you are not too sure about something. Also make sure to link any issue related to the PR you created.
