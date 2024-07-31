# docker-database

**Overview**

This project provides a convenient way to start various database containers (PostgreSQL, MongoDB, SQL Server, Redis, Memcached, and etcd) using a simple `.env` file for configuration. It also includes a Makefile for easy execution.

**Features:**

* **Multiple databases:** Supports PostgreSQL, MongoDB, SQL Server, Redis, Memcached, and etcd.
* **`.env` configuration:** Customizable settings through an `.env` file.
* **Makefile:** Streamlined execution with a Makefile.
* **Flexibility:** Easily add or remove databases as needed.

**Getting Started**

1. **Clone the repository:**
   ```bash
   git clone https://github.com/4kpros/docker-database.git

2. **Create a .env file: Copy the provided *.env.example* file and rename it to *.env* Customize the settings as required:**
    ```bash
    cp .env.example .env

3. **Build and run: Use the provided Makefile to build and run the containers:**

    # To Start all the services
        ```bash
        make all

    # To Start a specific service (replace <service> with the service name)
        ```bash
        make <service>

    Example:
        ```bash
        make postgres # postgres mongodb sqlserver redis memcached etcd

4. **To stop and remove the containers:**

    *To Stop all the services*
        ```bash
        make stop-all

    *To Stop a specific service (replace <service> with the service name)*
        ```bash
        make stop-<service>

    *Example:*
        ```bash
        make stop-postgres # postgres mongodb sqlserver redis memcached etcd