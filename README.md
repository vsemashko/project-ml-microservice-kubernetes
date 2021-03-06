[![CircleCI](https://circleci.com/gh/vsemashko/project-ml-microservice-kubernetes.svg?style=svg)](https://app.circleci.com/pipelines/github/vsemashko/project-ml-microservice-kubernetes)

## Project Overview

Udacity DevOps project 4, which includes a pre-trained, `sklearn` model that has been trained to predict housing prices 
in Boston according to several features, such as average rooms in a home and data about highway access, 
teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, 
on [the data source site](https://www.kaggle.com/c/boston-housing).

Project includes containerisation of an application and execution of it in kubernetes cluster.

## Setup the Environment

* You'll need a python of version 3.7.3
* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies
* Run `make all` to install all dependencies and run lint. 
In order to run lint locally you'll need a [hadlolint](https://github.com/hadolint/hadolint) installed.
E.g. for mac you can use `brew install hadolint`

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Upload docker image into repository: `./upload_docker.sh`
4. Run in Kubernetes:  `./run_kubernetes.sh`
5. Example of predictions request: `./make_prediction.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
