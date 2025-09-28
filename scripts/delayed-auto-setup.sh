#!/bin/bash

# Delayed auto-setup script with 5-second countdown
echo "🚀 Starting delayed auto-setup..."

# Function to show countdown
countdown() {
    local seconds=$1
    local action=$2
    
    echo "⏰ $action will start in $seconds seconds..."
    echo "Press Ctrl+C to cancel"
    
    for ((i=seconds; i>0; i--)); do
        printf "\r⏱️  Starting in %d seconds... " $i
        sleep 1
    done
    echo ""
    echo "✅ Starting: $action"
}

# Auto-save with delay
countdown 5 "Auto-save configuration"

# Install dependencies if package.json exists
if [ -f "package.json" ]; then
    countdown 5 "Installing npm dependencies"
    npm install --silent
fi

# Run linting and formatting with delay
if [ -f "package.json" ]; then
    countdown 5 "Running code formatting"
    npm run format 2>/dev/null || echo "No format script found"
    
    countdown 5 "Running linting"
    npm run lint 2>/dev/null || echo "No lint script found"
fi

# Auto-commit changes with delay
if [ -d ".git" ]; then
    countdown 5 "Auto-committing changes"
    git add .
    git commit -m "Auto-commit: $(date)" || echo "No changes to commit"
fi

echo "✅ Delayed auto-setup completed!"