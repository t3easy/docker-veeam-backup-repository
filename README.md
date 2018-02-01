# Usage
Prepare your NAS/Server: Install Docker, create a shared folder for the backups.

Create a ssh key pair, e.g. `ssh-keygen -t rsa -C "your.email@example.com" -b 4096`

Copy over the public key to your NAS/Server.
Mount the public key to `/root/.ssh/authorized_keys` and a folder of your NAS to store your backups outside the container.
Expose a port and map it to port 22.

```bash
docker run --rm t3easy/veeam-backup-repository -p 2222:22 \
    -v $PWD/veeam.pub:/root/.ssh/authorized_keys \
    -v /volume2/VeeamBackup:/veeam
```
