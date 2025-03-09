# FastAPI Dockerized with GitHub Actions

## Overview
This project demonstrates how to automate the deployment of a Dockerized FastAPI application using GitHub Actions.

## How to Run Locally
1. Install dependencies:
pip install fastapi uvicorn

markdown
Copy
Edit
2. Run the server:
uvicorn main:app --reload

markdown
Copy
Edit
3. Open **http://127.0.0.1:8000** in the browser.

## How to Build and Run the Docker Image
1. Build the image:
docker build -t fastapi-app .

markdown
Copy
Edit
2. Run the container:
docker run -p 8000:8000 fastapi-app

markdown
Copy
Edit
3. Access **http://127.0.0.1:8000**.

## GitHub Actions Workflow
- **Triggers** on `push` events.
- **Steps:**
1. Checkout code
2. Authenticate to Docker Hub using a secret (`DOCKERTOKEN`)
3. Build and push the Docker image to Docker Hub.

## Docker Hub Image
- Pull the latest image using:
docker pull <your-dockerhub-username>/fastapi-app:latest

markdown
Copy
Edit

## Setting up DOCKERTOKEN Secret
1. Generate an access token from Docker Hub.
2. Go to **GitHub Repo → Settings → Secrets → Actions**.
3. Add a new secret named `DOCKERTOKEN`.
4. The GitHub Actions workflow will use this secret to authenticate.

## Submission
- **GitHub Repo**: [GitHub Repository URL]
- **Docker Hub Image**: [Docker Hub Image URL]
