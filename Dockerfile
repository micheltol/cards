FROM  jekyll/builder:latest
RUN npm install --global gulp-cli
RUN npm install --save-dev gulp
# COPY package.json .
# RUN npm i
EXPOSE 4000
