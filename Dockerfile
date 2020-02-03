FROM  jekyll/builder:latest
RUN npm install --global gulp-cli
RUN npm install --save-dev gulp
#RUN jekyll serve --watch --force_polling --trace --incremental --host=0.0.0.0
ENTRYPOINT [ "jekyll", "serve", "--watch", "--force_polling", "--trace", "--incremental"]
EXPOSE 4000
