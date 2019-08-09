# Gemfire Docker

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisite
1. Install Docker community Edition for mac (as per your system) 
[Docker](https://docs.docker.com/docker-for-mac/install/)

2. Download gemfire installer(tar/zip) version.
I am using pivotal-gemfire-9.8.3 (Put it in same directory as the docker file as it make it easier)
[Gemfire Download](https://network.pivotal.io/products/pivotal-gemfire/)

### Building the image
To build the docker image navigate to the folder containing the docker file.
and run following command. 

````
docker build .
````

After build is successful run following command to view the images 

````
docker images

````

To tag the image you build with proper name 

````
docker tag <image-id> <name>:<tag>

docker tage <image-id> gemfire:mulesoft
````

### Running the docker container
To the the docker container 
````
docker run <image-id>
````

To run container with interactive terminal 
````
docker run -it <image-id>
```` 

To run container on background
````
docker run -dit <image-id>
```` 

To attach the container running in the background
```
docker attach <CONTAINER_NAME>
```

To view all running containers
```
docker ps -a
```

### Contribution
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

### Versioning

### Authors

### License

### Acknowledgements

### Reference
[Pivotal](http://gemfire82.docs.pivotal.io/docs-gemfire/latest/getting_started/15_minute_quickstart_gfsh)html#topic_FE3F28ED18E145F787431EC87B676A76)

[Docker Command](https://blog.codeship.com/understanding-dockers-cmd-and-entrypoint-instructions/)