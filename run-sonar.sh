#!/bin/bash

echo "========================================"
echo "Running Tests and Generating Coverage"
echo "========================================"
./gradlew clean test jacocoRootReport

echo ""
echo "========================================"
echo "Running SonarQube Analysis"
echo "========================================"
export SONAR_TOKEN=b46e958164a3c73125fd9d2c16849d76d561458f
./gradlew sonar

echo ""
echo "========================================"
echo "Analysis Complete!"
echo "View results at: https://sonarcloud.io/dashboard?id=hafeezilias_softwarequality"
echo "========================================"
