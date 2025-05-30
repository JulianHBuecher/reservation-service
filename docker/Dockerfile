FROM golang:1.20 AS builder

# Set the working directory
WORKDIR /app

# Copy go.mod and go.sum files
COPY go.mod go.sum ./

# Download dependencies
RUN go mod download

# Copy the source code
COPY . .

# Build the Go application
RUN go build -o reservations cmd/main.go

# Stage 2: Create a lightweight image
FROM scratch

# Copy the binary from the builder stage
COPY --from=builder /app/reservations .

# Command to run the application
CMD ["./reservations"]