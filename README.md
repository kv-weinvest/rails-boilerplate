# rails-boilerplate
Rails 5 boilerplate with Docker and Rspec

# Requirements

Install [Docker](https://www.docker.com/products/docker)

# Setup

1) Clone this repo inside your empty project directory:

`$ git clone https://github.com/warex03/rails-boilerplate .`

2) Remove the .git folder:

`$ rm -rf .git`

3) Build and run the containers:

`$ make up`

4) Initialize the project:

```
$ make init_project
$ make setup
$ make restart
```

5) Check if the api is working on `http://localhost:3000`