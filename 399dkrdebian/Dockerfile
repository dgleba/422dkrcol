FROM debian:stretch

# Configure environment
ENV GUNICORN_BIND=0.0.0.0:8088 

# Create a user
RUN useradd -U -m albe && \
    mkdir /bag  && \
    echo "alias ll='ls -la'" >>   ~/.bashrc
        
RUN apt-get update && \
    apt-get install -y \
       wget \
       curl \
       procps 
       
#       mc  \
       
      
RUN apt-get clean && \
    rm -r /var/lib/apt/lists/* 

    
# Configure Filesystem
WORKDIR /bag


# Deploy application
# CMD ["gunicorn", "superset:app"]
CMD ["bash"]