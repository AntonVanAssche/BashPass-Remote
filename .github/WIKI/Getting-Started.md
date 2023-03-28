## Dependencies

-   `bash >= 3.0`
-   `ssh`

## Installation

### Installation By downloading the tarball/zip (recommended)

If you prefer to download the provided tarball or zip, you can download them from the [release page](https://github.com/AntonVanAssche/BashPass/releases/latest/) of the GitHub repository.
This is the recommended way to install BashPass, since it allows you to verify the authenticity of the tarball.
Follow the steps below to manually install BashPass:

Download the tarball corresponding to the version you want to install from the [release page](https://github.com/AntonVanAssche/BashPass/releases/latest/).

**Note**: Replace `X.X` in the commands below with the version number you want to install.

```console
$ wget -O BashPass-X.X.tar.gz https://github.com/AntonVanAssche/BashPass/archive/refs/tags/X.X.tar.gz
$ wget -O BashPass-X.X.tar.gz.asc https://github.com/AntonVanAssche/BashPass/releases/download/X.X/BashPass-X.X.tar.gz.asc
```

If the above commands fail, you can try using `curl` instead of `wget` by running the following commands:

```console
$ curl -o BashPass-X.X.tar.gz -L https://github.com/AntonVanAssche/BashPass/archive/refs/tags/X.X.tar.gz
$ curl -o BashPass-X.X.tar.gz.asc -L https://github.com/AntonVanAssche/BashPass/releases/download/X.X/BashPass-X.X.tar.gz.asc
```

If neither of these options work, it may be because you do not have either `wget` or `curl` installed on your system.
You can check if you have either of them installed by running `command -v wget` or `command -v curl`, which should return the path where the binary is located.
If you don't have either of them installed, you can install them using your system's package manager.

The provided tarballs are signed with the following PGP key: [AB592CC1A4D17E654ED55FE83FF8016D27683E3E](https://keyserver.ubuntu.com/pks/lookup?search=0x3ff8016d27683e3e&op=vindex).
A copy of this public key can be found on the [release](https://github.com/AntonVanAssche/BashPass/releases/download/3.0/BashPass-3.0.pub) page.
This key allows you to verify the tarball.
Although this step isn't required, it is recommended.
If you do decide to verify the authenticity of the tarball you can import the PGP key by using this command:

```console
$ gpg --keyserver keyserver.ubuntu.com --recv-keys 0x3ff8016d27683e3e
```

Once the PGP key is imported, you can verify the authenticity of the tarball.

```console
$ gpg --verify BashPass-X.X.tar.gz.asc
```

This command verifies the tarball's signature using GPG. If the signature is valid, you should see a message indicating that the signature is good, as shown below.

```
gpg: assuming signed data in 'BashPass-X.X.tar.gz'
gpg: Signature created Sat April 23 18:37:51 2022 CEST
gpg: Use RSA key AB592CC1A4D17E654ED55FE83FF8016D27683E3E
gpg: Good signature of "Anton Van Assche (git) <vanasscheanton@gmail.com>" [unknown]
```

Now it's time to extract the tarball, you can do this with the following command:

```console
$ tar -xvzf BashPass-X.X.tar.gz
```

Once the tarball is extracted, it is time to install BashPass, by using the `make install` command.

```console
$ cd BashPass-X.X
$ make install
```

Alternatively, you can install BashPass by running the following commands:

```console
$ mkdir -p ~/.config/bashpass/
$ mkdir -p ~/.local/share/bashpass/
$ mkdir -p ~/.local/bin/
$ cp -r BashPass-X.X/bashpass ~/.local/bin/
$ cp -r BashPass-X.X/config/ ~/.config/bashpass/
$ cp -r BashPass-X.X/docs/* ~/.local/share/man/man1/
```

### Installation by cloning the repository

Once you have generated your GPG key, you can proceed to install BashPass.
BashPass can be installed by cloning the repository and running the `make install` command.

**Note**: Replace `X.X` in the commands below with the version number you want to install.

```console
$ git clone https://www.github.com/AntonVanAssche/BashPass.git --branch X.X
$ cd BashPass-X.X
$ make install
```

## Updating

Updating BashPass to it's latest version is fairly straightforward, this can be achieved by cloning the repository and running the `make update` command. Alternatively, you can also download the latest release, extract it and run the `make update` command from the extracted directory.

**Note**: Replace `X.X` in the commands below with the version number you want to install.

```console
$ git clone https://www.github.com/AntonVanAssche/BashPass.git --branch X.X
$ cd BashPass-X.X
$ make update
```

Alternatively, you can update BashPass by running the following commands:

```console
$ cp -r BashPass-X.X/bashpass ~/.local/bin/bashpass
$ cp -r BashPass-X.X/docs/* ~/.local/share/man/man1/
```

## Uninstalling

Uninstalling BashPass is also fairly straightforward, this can be achieved by cloning the repository and running the `make uninstall` command. Alternatively, you can also download the latest release, extract it and run the `make uninstall` command from the extracted directory.

Keep in mind that this will remove all configuration files and data associated with BashPass, with the exception of the password store location.

**Note**: Replace `X.X` in the commands below with the version number you want to install.

```console
$ git clone https://www.github.com/AntonVanAssche/BashPass.git --branch X.X
$ cd BashPass-X.X
$ make uninstall
```

Alternatively, you can uninstall BashPass by running the following commands:

```console
$ rm -rf ~/.config/bashpass/
$ rm -rf ~/.local/share/bashpass/ # Only if you want to remove the passwords stored on you computer.
$ rm -rf ~/.local/bin/bashpass
```
