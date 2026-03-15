# ---------- Dockerfile ----------
FROM python:3.10-slim

# Set work dir inside container
WORKDIR /app

# Copy necessary files
COPY app.py .
COPY templates ./templates

# Install Flask
RUN pip install --no-cache-dir flask

# Expose the Flask port
EXPOSE 5010

# Run the Flask application
CMD ["python", "app.py"]
