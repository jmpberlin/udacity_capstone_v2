# Udacity Capstone Project

### Project shows the containerization through docker and then deploying on Amazon EKS all through an CircleCi Pipeline

What the Pipeline does:

=> Linting the Dockerfile and the python-file
=> Building the Docker Container
=> Pushing the Container to Dockerhub
=> Creating an EKS Cluster on AWS
=> Create a Deployment with the beforehand created Docker Image
=> Updating the Deployment with the lates image on Dockerhub, when the pipeline runs
