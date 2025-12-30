APP_NAME=cinnamon

BUILD_DIR=bin

MAIN_FILE=./cmd/main.go

.PHONY: all build run test clean

all: build

# Build the binary for the current OS/Arch
build:
	@echo "Building $(APP_NAME)..."
	@mkdir -p $(BUILD_DIR)
	@go build -o $(BUILD_DIR)/$(APP_NAME) $(MAIN_FILE)
	@echo "Build complete: $(BUILD_DIR)/$(APP_NAME)"

# Run the application directly
run:
	@echo "Running $(APP_NAME)..."
	@go run $(MAIN_FILE)

# Run tests with coverage
test:
	@echo "Running tests..."
	@go test -v -cover ./...

# Clean up build artifacts
clean:
	@echo "Cleaning up..."
	@rm -rf $(BUILD_DIR)
	@echo "Clean complete."
