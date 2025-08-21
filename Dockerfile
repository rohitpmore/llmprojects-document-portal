# Use official Python image
FROM python:3.13-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set workdir
WORKDIR /app

# Install OS dependencies and uv
RUN apt-get update && \
    apt-get install -y build-essential poppler-utils curl && \
    pip install uv && \
    rm -rf /var/lib/apt/lists/*

# Copy dependency files
COPY pyproject.toml uv.lock ./

# Copy .env file
COPY .env .

# Install dependencies with uv
RUN uv sync --frozen

# Copy project files
COPY . .

# Expose port
EXPOSE 8080

# Run FastAPI with uvicorn using uv
CMD ["uv", "run", "uvicorn", "api.main:app", "--host", "0.0.0.0", "--port", "8080", "--reload"]

# Replace last CMD in prod
#CMD ["uv", "run", "uvicorn", "api.main:app", "--host", "0.0.0.0", "--port", "8080", "--workers", "4"]