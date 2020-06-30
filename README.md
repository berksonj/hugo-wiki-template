# Hugo Wiki Project Template

This project uses a [Dockerized version of Hugo Extended](https://hub.docker.com/r/klakegg/hugo/) as a static site generator.

It also uses [lunr.js](https://lunrjs.com/) to implement search functionality on the static site. During the docker build, an index is created using the post title, content, tags, and categories.

https://www.docker.com/

https://gohugo.io/

https://hub.docker.com/r/klakegg/hugo/

https://lunrjs.com/

## Installation

First, Docker Engine must be installed on the development machine. Read Docker's guide to installing Docker Engine below.

https://docs.docker.com/engine/install/

Docker Compose must also be installed on the development machine. Read Docker's guide to installing Docker Compose below.

https://docs.docker.com/compose/install/

## Getting started

To get stared, clone this repo. Then, in the project folder, run:

`docker-compose up --build`

Your website will be available at http://localhost:8000/.

### Create a New Entry

To create a new entry, run the following inside your docker container. TODO: explain how to run inside container.

`hugo new posts/my-first-post.md`

https://gohugo.io/getting-started/quick-start/#step-4-add-some-content

## Prepare for Production

TODO: explain build args.

TODO: maybe don't use docker-compose.

## Customizing the Site

### Config

### Navigation

### Theme

### Custom Styles

## Contributing