<br>

# What is this repository for?

An OpenSSH server designed to be deployed with Docker Compose.
Personally, I use this because I wanted to give SSH access to my friends
to my personal laptop, but at the same time didn't want them to be able to
view my personal files. Thus, I decided to let them SSH into this Docker container instead.

<br>

***How we run this***<br>
```bash
# Open a Bash shell
docker compose run ssh-server bash
...

# Secure using Cloudflare Tunnel
...

# 
...
```

<br>
<br>
