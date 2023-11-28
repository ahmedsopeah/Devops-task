# Simple Express.js Web Application with Docker, Terraform, and CI/CD

This project demonstrates building a simple Express.js web application, containerizing it using Docker, provisioning cloud resources using Terraform, and setting up a CI/CD pipeline using GitHub Actions.

## Running the Web Application Locally

**Prerequisites:** Ensure you have Node.js and Docker installed on your machine.

1. **Build the Docker Image:**

    ```bash
    docker build -t web:latest .
    ```

2. **Run the Docker Container:**

    ```bash
    docker run -d -p 3000:3000 web:latest
    ```

3. **Access the Web Application:**

   [http://localhost:3000]

## Provisioning kubernestes Resources with Terraform


1. **Initialize Terraform:**

    ```bash
    terraform init
    ```

2. **Apply Terraform Plan:**

    ```bash
    terraform plan
    terraform apply
    ```

