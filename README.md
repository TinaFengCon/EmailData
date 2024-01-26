# cifr-manager-service

microservice containing the core business logic for the cifr process in funding

# Core Features
This template supplies various core features.  An explanation of how they work is provided [here](./doc/CoreFeatures.md).

# Optional Metroplex Features Provided

## Postgres
This application was set up with Postgres as a feature.  Please see the documentation provided [here](./doc/Postgres.md).

## Rest Endpoints
This application was set up with Rest endpoints as a feature.  Please see the documentation provided [here](./doc/Rest.md).

# Docker Compose
This service was built using features that provide docker compose services.  This exists [here](./build/docker-compose.yaml).


## Running Docker Compose
To run your docker compose, you have two options:

1. Navigate to the /build folder of the solution and run the following:
    ```
    docker-compose up -d
    ```
2. At the root directory of your solution, run the following:
    ```
    docker-compose -f ./build/docker-compose.yaml up -d
    ```
>**Note**: The `-d` here is telling docker to run this detached.  This means it won't lock up your terminal while docker runs.  If you remove the `-d` it will lock up whatever terminal you ran the command.  Some find this annoying.


## Stopping Docker Compose
To stop your docker compose, you similarly have two options.

1. Navigate to the /build folder of the solution and run the following:
    ```
    docker-compose down
    ```
2. At the root directory of your solution, run the following:
    ```
    docker-compose -f ./build/docker-compose.yaml down
    ```
>**Note**: There is an optional flag you can add here that will destroy any volumes and settings you createed.  Append `-v` to your command to do this.  This will mean everything you set up will be completely gone after you run the command.  Whether you want to do this will depend on your use-case.

# Infrastructure Information

This template comes connected to various tools and utilities for managing deployments, pull requests, testing, etc.  Please read the following documentation for more information on how these things work:

[Argo](./.stratus/argo/ARGO.md)

[K8s Manifest](./.stratus/kustomize/K8S-MANIFEST.md)

[Github Actions](./.github/ACTIONS.md)