# Flask Docker Image

This repository contains a Dockerfile to build a Docker image for a Flask application.

## Steps to run the image:

1. Clone the repository:

   ```bash
   git clone https://github.com/your_user/flask-docker-image.git
   cd flask-docker-image
   ```
2. Build the Docker image:

   ```bash
   docker build -t flask-app .
   ```

3. Run the container:

   ```bash
   docker run -p 5000:5000 flask-app
   ```
   
4. Access the Flask application at:
- **`http://localhost:5000`**

### NOTES
- Ensure that you have Docker installed on your machine.
- The container also accepts SSH connections on port 2222.
