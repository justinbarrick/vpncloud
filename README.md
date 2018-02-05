A Dockerfile for [vpncloud](https://github.com/dswd/vpncloud.rs).

# Usage

You can run this pretty simply, just create a vpncloud config, e.g. `example.net`:

```
docker run -d -v $(pwd):/etc/vpncloud --net=host --privileged=true justinbarrick/vpncloud --config /etc/vpncloud/example.net
```

You'll then be able to access the network from your host machine.
