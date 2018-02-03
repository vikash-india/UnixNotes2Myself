# Description: Benchmark Open SSL on a Linux System

### Install Tools
```
# None
```

### Benchmark OpenSSL
* This test basically means how fast the CPU can calculate cryptographic hashes like md5, sha1, aes, rsa etc.
* OpenSSL benchmark is also important for networking devices like routers, bridges, hubs etc.
* The performance of the below command varies greatly if there is any hardware cryptographic accelerator present in the 
  CPU. For more detail check the openssl man page and openssl website.

```bash
openssl speed des des-ede3 dsa2048 hmac idea-cbc md5
```

### TODO
* https://www.pcsuggest.com/gpu-benchmarking-and-stress-testing-in-linux/
