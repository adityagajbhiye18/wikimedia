# wikimedia

#Helm Charts for Mediawiki
This chart bootstraps a Mediawiki deployment on a Kubernetes cluster using the Helm package manager.

#Dependency Charts
This helm chart is an umbrella chart that pulls together engine specific charts. The engine charts are included as dependencies in Chart.yaml. We have added PostgresSQL bitnami image as a Dependency.

#Repository Structure
This GitHub repository contains the source for the packaged and versioned charts released using GitHub pages (the Chart Repository).

The Charts in the charts/ directory in the master branch of this repository match the latest packaged Chart in the Chart Repository.


#Helm Chart Templates

The templates require your application to built into a Docker image. The Docker Templates project provides assistance in creating an image for your application.

This project provides the following files:

File	Description
/charts/wikimedia/Chart.yaml	The definition file for your application
/charts/wikimedia/values.yaml	Configurable values that are inserted into the following template files
/charts/wikimedia/templates/deployment.yaml	Template to configure your application deployment.
/charts/wikimedia/templates/ingress.yaml	Template to configure your application deployment.
/charts/wikimedia/templates/service.yaml	Template to configure your application deployment.
/charts/wikimedia/templates/hpa.yaml	Template to configure your application deployment.
/charts/wikimedia/templates/NOTES.txt	Helper to enable locating your application IP and PORT
#Helm Commands
$ helm repo add adityagajbhiye18-wikimedia https://github.com/adityagajbhiye18/wikimedia/tree/main/charts/wikimedia

$ helm install my-release adityagajbhiye18/wikimedia 
