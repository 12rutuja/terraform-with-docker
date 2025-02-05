# terraform-with-docker
automate docker by using terraform

This repo deploys a simple Nginx web server using Terraform and Docker.

* **Terraform:** Manages Docker image and container.
* **Docker Provider:** `kreuzwerker/docker`
* **Nginx Image:** `nginx:latest` (pulled from Docker Hub).
* **Container:** Exposes port 80.

**Usage:**

1. **Prerequisites:** Terraform, Docker (on EC2 if applicable).
2. **Clone:** `git clone <repo_url>`
3. **Init:** `terraform init`
4. **(EC2) Configure Docker Provider:** SSH tunnel recommended.
5. **Plan/Apply:** `terraform plan`, `terraform apply`
6. **Verify:** Browse to `http://localhost` or `http://<EC2_IP>`
7. **Destroy:** `terraform destroy`

**EC2 Deployment:** Docker must be running on EC2.
