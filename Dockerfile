FROM klakegg/hugo:0.73.0-ext-ubuntu

ARG baseurl

# Install Nodejs
RUN apt-get update -y && \
	apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

# Set work directory
WORKDIR /code

# Copy project
COPY . /code/

# npm install
RUN npm install

# Build lunr.js index
RUN node ./build-lunrjs-index.js > static/search-index.json

# Run hugo server
RUN echo "Run Hugo server"
ENTRYPOINT ["hugo", "server", "--baseURL", "$baseurl", "--port", "8000", "--bind", "0.0.0.0", "--appendPort=false"]