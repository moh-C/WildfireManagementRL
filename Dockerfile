# Use the specified base image
FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-devel
# FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime
# FROM pytorch/pytorch:2.2.0-cuda11.8-cudnn8-devel

# Set the working directory in the Docker image
WORKDIR /app

# Copy everything from the current directory (on your machine) to the working directory in the Docker image
COPY . .

# Install any dependencies specified
RUN pip install jupyterlab matplotlib pandas seaborn scikit-learn python-dotenv pydot jinja2

CMD [ "jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser" ]

