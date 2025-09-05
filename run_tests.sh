#!/bin/bash

echo "Running Gherkin API Tests..."

# Install dependencies
flutter pub get

# Run the Gherkin tests
dart test_driver/app_test.dart

echo "Tests completed!"