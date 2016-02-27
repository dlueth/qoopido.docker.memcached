# recommended directory structure #
Like with my other containers I encourage you to follow a unified directory structure approach to keep things simple & maintainable, e.g.:

```
project root
  - docker-compose.yaml
  - data
  	- memcached
  	  - logs
```

# Example docker-compose.yaml #
```
memcached:
  image: qoopido/memcached:latest
  ports:
   - "11211:11211"
  volumes:
   - ./data/memcached:/app/data
```

# Or start container manually #
```
docker run -d -P -t -i -p 11211:11211 \
	-v [local path to data]:/app/data \
	--name memcached qoopido/memcached:latest
```