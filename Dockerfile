# Use node 4.4.5 LTS
FROM node:latest
ENV LAST_UPDATED 20160605T165400



# Change working directory
WORKDIR C/Users/Steven/todolist/todolist

# add `/app/node_modules/.bin` to $PATH
ENV PATH C/Users/Steven/todolist/todolist/node_modules/.bin:$PATH

# Install dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install
RUN npm install react-scripts@3.4.1 -g

# Copy source code
COPY . ./

# Expose API port to the outside
EXPOSE 8080

# Launch application
CMD ["npm","start"]