From Ubuntu:18.04
From Python:3.8

#install pre-requisties
RUN apt-get install updates && \
        apt-get install -y sudo \
        curl \
        wget \
        python3-pip \
        python3-dev \
        python3-wheel
        git \
        openss 
        
# create workingdir
WORKDIR /app
copy ./ /app/


# Run app.py while the container launches
CMD["python"]

