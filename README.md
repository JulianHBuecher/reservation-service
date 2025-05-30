# reservations

This project is a Go application designed to manage reservations. Below are the details on how to build and run the application.

## Project Structure

```
reservations
├── cmd
│   └── main.go          # Entry point of the application
├── internal
│   └── app
│       └── app.go      # Core application logic
├── go.mod               # Module dependencies
├── go.sum               # Dependency checksums
├── docker
│   └── Dockerfile       # Docker image definition
└── README.md            # Project documentation
```

## Building the Application

To build the application, ensure you have Go installed on your machine. Then, navigate to the project directory and run:

```bash
go build -o reservations ./cmd/main.go
```

## Running the Application

After building the application, you can run it using:

```bash
./reservations
```

## Docker

This project includes a Dockerfile for creating a Docker image of the application. To build the Docker image, navigate to the `docker` directory and run:

```bash
docker build -t reservations .
```

To run the Docker container, use:

```bash
docker run reservations
```

## Dependencies

This project uses Go modules for dependency management. The `go.mod` and `go.sum` files are included to manage the project's dependencies. To install the dependencies, run:

```bash
go mod download
```

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any suggestions or improvements.