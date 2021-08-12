<h1 align="center">BIRD</h1>

<p align="center">The BIRD project aims to develop a fully functional dynamic IP routing daemon.</p>

<p align="center">
    <a href="https://ghcr.io/akafeng/bird">Container Registry</a> ·
    <a href="https://bird.network.cz">Project Source</a>
</p>

<p align="center">
    <img src="https://img.shields.io/github/workflow/status/akafeng/docker-bird/Docker%20Build" />
    <img src="https://img.shields.io/github/last-commit/akafeng/docker-bird" />
    <img src="https://img.shields.io/github/v/release/akafeng/docker-bird" />
    <img src="https://img.shields.io/github/release-date/akafeng/docker-bird" />
</p>

---

### Pull The Image

```bash
$ docker pull ghcr.io/akafeng/bird
```

### Start Container

```bash
$ docker run -d \
  -v /etc/bird.conf:/etc/bird.conf \
  --cap-add=NET_ADMIN \
  --cap-add=NET_BROADCAST \
  --cap-add=NET_RAW \
  --network host\
  --restart always \
  --name=bird \
  ghcr.io/akafeng/bird
```
