# Build container #
```
docker build -t qoopido/memcached:1.0.2 .
```

# Run container manually ... #
```
docker run -d -P -t -i -p 11211:11211 \
	-v [local path to logs]:/app/logs \
	--name memcached qoopido/memcached
```

# ... or use docker-compose #
```
memcached:
  image: qoopido/memcached
  ports:
   - "11211:11211"
  volumes:
   - ./logs:/app/logs
```

# Open shell #
```
docker exec -i -t "memcached" /bin/bash
```