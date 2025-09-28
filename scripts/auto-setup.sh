#!/bin/bash

# Auto-setup script for Cursor workspace
echo "Setting up auto-approval environment..."

# Make scripts executable
chmod +x scripts/*.sh

# Install dependencies if package.json exists
if [ -f "package.json" ]; then
    echo "Installing npm dependencies..."
    npm install --silent
fi

# Run linting and formatting
if [ -f "package.json" ]; then
    echo "Running code formatting..."
    npm run format 2>/dev/null || echo "No format script found"
    npm run lint 2>/dev/null || echo "No lint script found"
fi

# Auto-commit changes if git is initialized
if [ -d ".git" ]; then
    echo "Auto-committing changes..."
    git add .
    git commit -m "Auto-commit: $(date)" || echo "No changes to commit"
fi

echo "Auto-setup completed!"