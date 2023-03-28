Welcome to the BashPass-Remote user guide!
This guide provides a small overview of all the features of BashPass-Remote.

## Help option

If you are not sure about the correct option to use, simply run bashpass with the `--help` or `-h` option. This will display all the features of BashPass.

**Note**: the `[name]` is optional.

```
bashpass-remote [user@host] [option] [name]         - Basic command structure.

Note:
    All parameters are required, except for the 'help' and 'version' options.

Options:
    --help, -h                                     - Print out this help message.
    --version, -v                                  - Print out the current version.
```

## Displaying the version

To display the current version of BashPass-Remote, simply run bashpass-remote with the `--version` or `-v` option.

```console
$ bashpass-remote --version
BashPass-Remote version X.X
```

When you also want to retrieve the version of BashPass which is installed on the remote host, you can use the same command, with a user and host specified.

```console
$ bashpass-remote <user>@<host> --version
BashPass-Remote version X.X
BashPass version X.X
```

## Examples

-   `bashpass-remote pi@192.168.0.4 --add gmail`
-   `bashpass-remote pi@192.168.0.4 --delete gmail`
-   `bashpass-remote pi@192.168.0.4 --show gmail`
-   `bashpass-remote pi@192.168.0.4 --list`

## BashPass specific options

Please refer to the [BashPass wiki](https://github.com/AntonVanAssche/BashPass/wiki) for more information about the BashPass specific options.
