FROM busybox:1.36
ARG COMMIT=dev
RUN mkdir /www && echo "fn-demo commit $COMMIT" > /www/index.html
EXPOSE 8080
CMD ["httpd", "-f", "-p", "8080", "-h", "/www"]
