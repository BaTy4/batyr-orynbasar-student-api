# Batyr Orynbasar Student API

## Description
A Spring Boot REST API for managing student records.

## Technologies
- Java 21
- Spring Boot
- Gradle
- Spring Data JPA
- PostgreSQL
- Docker and Docker Compose
- Jenkins

## CRUD Endpoints

| Method | Endpoint | Description |
|---|---|---|
| POST | /api/students | Create a student |
| GET | /api/students | Retrieve all students |
| GET | /api/students/{id} | Retrieve a student by ID |
| PUT | /api/students/{id} | Update a student |
| DELETE | /api/students/{id} | Delete a student |
| GET | /api/students?name={name} | Search students by name |

## Run the Application

```bash
docker compose up --build -d

## Project Overview

Batyr Orynbassar Student API is a containerized REST API application.
It uses Java, Spring Boot, PostgreSQL, Docker, and Docker Compose.
The project includes automated build and testing workflows.
