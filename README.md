# DOCKER-NODE

Docker image for Node.js with a non-root user.

# User

The non-root user is `user`. Password is not set for `user`. `user` has sudo privileges.

# NVM

`nvm` is automatically loaded in a login shell.

To use `nvm` in a non-login shell, run the following:

``` bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
```
