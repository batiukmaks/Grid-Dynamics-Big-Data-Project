# Use the jupyter/pyspark-notebook image as the base image
FROM jupyter/pyspark-notebook

# Copy your Spark project files into the container
COPY . /home/jovyan/work

# Expose the Jupyter Notebook port
EXPOSE 8888

# Start Jupyter Notebook on container launch
CMD ["start-notebook.sh", "--NotebookApp.token=", "--NotebookApp.allow_remote_access=True"]

# Run with: docker run -it --rm -p 8888:8888 -v .:/home/jovyan/work gd-big-data-school