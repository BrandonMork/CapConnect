FROM strapi/base

# Do everything in Production mode
ENV NODE_ENV production

WORKDIR /usr/src/app

# Install the Strapi admin panel
COPY ./package.json ./
COPY ./package-lock.json ./
RUN npm install --silent

#Install CapConnect
COPY ./client/package.json ./client/
COPY ./client/package-lock.json ./client/
RUN npm -prefix ./client/ install ./client/ --silent

# Copy supplemental files (Could be pared down)
COPY . .

# Build the Strapi admin panel
RUN npm run build

# Build CapConnect
RUN npm --prefix ./client/ run build ./client/

# Strapi's default HTTP port
EXPOSE 1337

# Strapi removed HTTPS capabilities
#EXPOSE 8443

# Run Strapi
CMD ["npm", "start"]
