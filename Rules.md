# Rules

1. **Infrastructure Setup:**

   - Use Docker Compose in a virtual machine.
   - Each Docker image must have the same name as its corresponding service.
   - Each service runs in a dedicated container.
2. **Container Requirements:**

   - Use the penultimate stable version of Alpine or Debian.
   - Write your own Dockerfiles (one per service).
   - Dockerfiles must be called in `docker-compose.yml` by the Makefile.
   - Forbidden to pull pre-made Docker images (except Alpine/Debian).
3. **Services to Set Up:**

   - NGINX with TLSv1.2 or TLSv1.3 only.
   - WordPress with PHP-FPM (without NGINX).
   - MariaDB (without NGINX).
   - Volume for WordPress database and website files.
   - Docker network to connect containers.
4. **Technical Constraints:**

   - Containers must restart on crash.
   - Avoid hacky patches (e.g., `tail -f`, `bash`, `sleep infinity`).
   - Forbidden to use `network: host`, `--link`, or `links:`.
   - No infinite loops or similar commands in entrypoints.
   - Follow best practices for PID 1 and Dockerfiles.
5. **Database and Security:**

   - WordPress database must have two users (one admin, no "admin" in the name).
   - Volumes in `/home/login/data` on the host machine.
   - Configure domain name to `login.42.fr` pointing to local IP.
   - No latest tag, passwords in Dockerfiles.
   - Use environment variables and .env file.
   - Store credentials securely, avoid public storage.
6. **NGINX:**

   - Must be the only entrypoint via port 443 using TLSv1.2 or TLSv1.3.
