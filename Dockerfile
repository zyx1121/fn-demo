FROM busybox:1.36
ARG COMMIT=dev
RUN mkdir /www && echo "fn-demo commit $COMMIT" > /www/index.html
EXPOSE 8080
# carrel sets PORT to the function's port.
CMD ["sh", "-c", "exec httpd -f -p ${PORT:-8080} -h /www"]
