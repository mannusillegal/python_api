From Ubuntu:18.04

# use an offical python runtime as a parent image
From Python:3.8

# install prerequisite
RUN apt-get install updates && \
        apt-get install -y sudo \
        curl \
        wget \
        python3-pip \
        python3-dev \
        python3-wheel \
        git \
        openssl 
        
# create working dir and setting the location to app
WORKDIR /app
copy ./ /app/

# Expose port 8000 available to world outside the container
EXPOSE 8000

# Run app.py while the container launches
CMD ["python", "fscript.py"]

