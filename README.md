# mkcd
`mkcd` is a delightfully simple program which uses `mkdir` and then `cd`s into it

## Install
```
curl https://raw.githubusercontent.com/Supraboy981322/mkcd/refs/heads/main/install.sh | bash
```

> [!IMPORTANT]
> You may have to refresh `bashrc` before use
> ```
> source ~/.bashrc
> ```

# Dependencies
If you're running a minimal Linux distro (like Alpine), please ensure all dependences are installed (run as `su`):
    `apk`:
    ```
    apk update && apk add sudo curl bash
    ```
    `apt`:
    ```
    apt update && apt install sudo curl bash -y
    ```
    `pacman`:
    ```
    pacman -Syu sudo curl bash
    ```
    `yum`:
    ```
    yum update && yum install sudo curl bash
    ```
    `dnf`:
    ```
    dnf install sudo curl bash
    ```
    `zypper`:
    ```
    zypper install sudo curl bash
    ```
- bash
- sudo
- curl