FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git wget build-essential \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install streamlit==1.29.0 torch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 \
    pillow==10.2.0 numpy==1.26.4 pandas==2.2.2 matplotlib==3.8.2 scikit-learn==1.3.2 seaborn==0.13.2 pytorch-grad-cam==1.4.8

# Expose port for Streamlit
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "waste_classification.py", "--server.port=8501", "--server.address=0.0.0.0"]
