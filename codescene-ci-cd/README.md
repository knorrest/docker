
To register a shell runner, run inside gitlab-runner container:
```gitlab-runner register \
  --non-interactive \
  --executor "shell" \
  --url "https://gitlab/" \
  --registration-token "1DVShJ6xRXBy_QVqmYbh" \
  --description "shell-runner" \
  --run-untagged="true" \
  --locked="false"```

To register a docker runner (run inside container):
```gitlab-runner register \ 
  --non-interactive \
  --executor "docker" \
  --url "http://gitlab/" \
  --docker-image alpine:latest \
  --registration-token "1DVShJ6xRXBy_QVqmYbh" \
  --description "docker-runner" \
  --docker-extra-hosts "gitlab:host.docker.internal" \
  --tag-list "docker,aws" \
  --run-untagged="true" \
  --locked="false"```

Make sure url is reachable from gitlab-runner AND from docker containers doing the jobs


[[runners]]
  name = "a5e64d8e76de"
  url = "http://gitlab/"
  token = "FHi-mz6tsGBvtJyBKycq"
  executor = "shell"
  [runners.cache]
    [runners.cache.s3]
    [runners.cache.gcs]
