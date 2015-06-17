# Build container #
```
docker build -t qoopido/memcached .
```

# Run container manually ... #
```
docker run -d -P -t -i -p 11211:11211 \
	-v [local path to logs]:/app/logs \
	-v [local path to config]:/app/config \
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
   - ./config:/app/config
```

# Open shell #
```
docker exec -i -t "memcached" /bin/bash
```

# Project specific configuration #
Any files under ```/app/config/memcached``` will be symlinked into the container's filesystem beginning at ```/etc/memcached```. This can be used to overwrite the container's default site configuration with a custom, project specific configuration.
