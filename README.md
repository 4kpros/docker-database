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
   git clone https://your-repository-url/docker-database.git

2. **Create a .env file: Copy the provided .env.example file and rename it to .env. Customize the settings as required:**
    ```bash
    cp .env.example .env

3. **Build and run: Use the provided Makefile to build and run the containers:**
    ```bash
    make all

4. **To stop and remove the containers:**
    ```bash
    make stop-all