![Build Status](https://api.travis-ci.org/kauz/docker-setup.svg?branch=master)

# Docker workflow dev:

## build
    
    docker build -f Dockerfile.dev .
## test
    
    docker run -it 3adbdff1eae9 npm test
or
    
    docker exec -it 3adbdff1eae9 npm test
## run

    docker run -p 3001:3000 -v /srv/app/node_modules -v $(pwd):/srv/app 3adbdff1eae9

Alternatively with docker-compose:

    docker-compose up [--build]

# Production build

    docker build .
    docker run -p 8080:80 f94b946bf93d
