#Pull node image
FROM node
#Set container working dir
WORKDIR /app
#Copy package.json to working dir
COPY package.json .
#Install deps
RUN npm install
#Copy the full repo to working dir
COPY . .
#Expose react app port
EXPOSE 3000
#Run the app
CMD ["npm", "start"]