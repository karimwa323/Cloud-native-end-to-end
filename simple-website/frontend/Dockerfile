FROM nginx:alpine

#upgrade the libs
RUN apk update && apk upgrade --no-cache
#make a constrains for zlib to avoid critical and high vulnerabilities
RUN apk add --no-cache "zlib>=1.3.2-r0"

COPY . /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]