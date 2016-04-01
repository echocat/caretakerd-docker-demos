# NGINX-PHP caretakerd demo

This spawns...

1. ``nginx`` (as the master) to serve a webpage on port 8080
2. ...and ``php-fpm -R -P`` that ends together with nginx process.

## Usage

```bash
docker run --rm -p 8080:8080 echocat/caretakerd-demo-nginx-php
```

Now you can reach the test webpage on ``http://<hostname>:8080`` (example: http://localhost:8080)
