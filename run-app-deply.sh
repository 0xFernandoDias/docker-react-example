#!/bin/bash
if [ $1 == "--dev" ]; then
    echo "Starting DEVELOPMENT environment..."
    echo "Deconstructing containers, if any..."
    docker-compose down
    echo "Building DEVELOPMENT containers..."
    docker-compose up -d --build
fi
if [ $1 == "--prod" ]; then
    echo "Deploying in PRODUCTION environment"
    echo "Deconstructing containers, if any..."
    docker-compose -f docker-compose.prod.yml down
    echo "Building PRODUCTION containers..."
    docker-compose -f docker-compose.prod.yml up -d --build
fi