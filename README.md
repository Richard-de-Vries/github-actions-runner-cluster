# github-actions-runner-cluster

## Requirements
- This project expects you to have a functioning kubernetes cluster (A Minikube/Docker Desktop/Kind cluster is fine)
- This project expects you to have kubectl configured to use the above cluster
- This project expects you to have a docker runtime which can be used to use the helmfiles
  - For windows the execution policy for Powershell scripts should be set to Unrestricted using `Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process`
- A github app has been created for the runner `https://github.com/actions-runner-controller/actions-runner-controller#deploying-using-github-app-authentication`

## Usage
Use the provided setup scripts to start the controller. after that manually apply the runner-deployment.yaml.

## Expanded usage
It is possible for the actions-controller to be able to scale up based on webhooks received by github. 