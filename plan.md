# Docker Project Plan

## One-Week Plan

### **Day 1: Setup and Research**

- **Setup Development Environment:**
  - Install necessary tools (Docker, Docker Compose, etc.)
  - Create your project directory structure.
- **Research:**
  - Read documentation on Docker, Docker Compose, and best practices for Dockerfiles.
  - Study how NGINX, WordPress, and MariaDB work and interact.

### **Day 2: Create and Configure Dockerfiles**

- **NGINX Dockerfile:**
  - Write the Dockerfile for NGINX including SSL/TLS configuration.
- **WordPress Dockerfile:**
  - Write the Dockerfile for WordPress with PHP-FPM setup.
- **MariaDB Dockerfile:**
  - Write the Dockerfile for MariaDB with initial configurations.

### **Day 3: Develop docker-compose.yml**

- **Compose Services:**
  - Define services for NGINX, WordPress, and MariaDB in `docker-compose.yml`
  - Ensure volumes and networks are correctly set up.
- **Environment Configuration:**
  - Create `.env` file to manage environment variables.

### **Day 4: Networking and Security**

- **Network Configuration:**
  - Configure the Docker network to ensure proper communication between containers.
- **Security:**
  - Implement SSL/TLS for NGINX.
  - Secure the MariaDB instance using environment variables and Docker secrets.

### **Day 5: Testing and Troubleshooting**

- **Test Each Service:**
  - Build and run each service individually to ensure they work.
  - Check logs and troubleshoot any issues.
- **Integration Testing:**
  - Run all services together using `docker-compose up`.
  - Verify the interaction between NGINX, WordPress, and MariaDB.

### **Day 6: Data Management**

- **Volumes:**
  - Set up volumes for WordPress database and website files.
  - Ensure data persistence and correct volume mounting.
- **Database Setup:**
  - Configure the WordPress database with two users, ensuring the administrator's username does not contain forbidden terms.

### **Day 7: Finalization and Documentation**

- **Cleanup and Optimization:**
  - Refine Dockerfiles and `docker-compose.yml` for optimal performance.
  - Remove any unnecessary files or configurations.
- **Documentation:**
  - Write detailed documentation for your project.
  - Include instructions on how to set up and run the project.
- **Domain Configuration:**
  - Configure your domain name to point to your local IP address.

### **Final Review**

- **Double-Check Requirements:**
  - Ensure all project requirements are met.
  - Validate that no prohibited practices (e.g., infinite loops, pre-made Docker images) are used.
- **Submit Project:**
  - Prepare your project for submission and review.
