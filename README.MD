
# Image Resize App:
    An application that resize the image on the base of dynamic parameters(width, height, and quality) with watermark.

# Architecture
![](AssessmentDiagram.png)

# Step 01 GKE Cluster: 
    Configure the CI/CD Pipeline for Creating the Cluster Autoscaler of GKE using terraform(IaC)

# Step 02 Install helm chart: 
    Configure the CI/CD Pipeline for building the new helm chart and deploy to the cluster.
    Pipeline will make sure the updated image is deployed on the cluster.
    helm install demoapp helmchart/

### 02.01 BackendConfig:
    helm chart will create backendConfig for CDN enable.

Link
    [backendConfig file](helmchart/templates/my-backendconfig.yaml)

### 02.02 Service:
    helm chart will create service to access the deployment pods

Link
    [service file](helmchart/templates/service.yaml)

### 02.03 Deployment:
    helm chart will create deployment for pod.

Link
    [deployment file](helmchart/templates/deployment.yaml)

### 02.04 Ingress:
    helm chart will create Ingress controller with external LB. 

Link
    [Ingress file](helmchart/templates/ingress.yaml)

### 02.05 HPA:
    helm chart will create Ingress controller with external LB. 

Link
    [HPA file](helmchart/templates/hpa.yaml)

# Step 03 Install Prometheus:
    It will be installed for monitoring the cluster.
    helm install prometheus stable/prometheus-operator


Link
    [detailed document](DetailedDocment.pdf "Detail of READM Detail")