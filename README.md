# KeePassXC for Omarchy

[![Plugin version](https://img.shields.io/github/v/release/christestet/omarchy-keepassxc?label=plugin)](https://github.com/christestet/omarchy-keepassxc/releases/latest)
[![Omarchy](https://img.shields.io/badge/Omarchy-4.0%2B-blue)](https://omarchy.org/)
[![License: MIT](https://img.shields.io/badge/license-MIT-green)](LICENSE)

A small, keyboard-friendly [Omarchy shell plugin](https://omarchy.org/manual/shell-plugins/)
that opens or focuses [KeePassXC](https://keepassxc.org/) from the top bar.

The plugin deliberately stays simple: it launches KeePassXC with an optional
local database path. It does not open or parse the database itself and never
accesses passwords, credentials, or clipboard contents.

## Requirements

- [Omarchy 4.0](https://omarchy.org/) or newer with shell plugin support
- [KeePassXC](https://keepassxc.org/) available as `keepassxc`

## Install

```bash
omarchy plugin add https://github.com/christestet/omarchy-keepassxc.git --enable
```

Omarchy validates the plugin and installs it under:

```text
~/.config/omarchy/plugins/chris.keepassxc
```

## Configure a database

Copy the example configuration:

```bash
cp ~/.config/omarchy/plugins/chris.keepassxc/config.example \
  ~/.config/omarchy/plugins/chris.keepassxc/config
```

Then set the path to your local KDBX file:

```ini
database_path=~/Documents/passwords.kdbx
```

Paths beginning with `~/` are supported. The local `config` file is ignored by
Git, so personal paths cannot accidentally be committed. If the file is absent
or the value is empty, the widget opens KeePassXC without selecting a database.

## Place the widget

The plugin defaults to the right side of the bar. Move it with Omarchy's bar
command if desired:

```bash
omarchy bar move chris.keepassxc --section right
```

Click the key icon to open KeePassXC or focus its existing window.

## Update

```bash
omarchy plugin update chris.keepassxc
```

See the [latest plugin version](https://github.com/christestet/omarchy-keepassxc/releases/latest)
and the complete [release history](https://github.com/christestet/omarchy-keepassxc/releases).

## Remove

```bash
omarchy plugin remove chris.keepassxc
```

## Security

Omarchy plugins execute as your user, so you should inspect third-party plugin
code before installing it. This plugin only invokes KeePassXC through
`omarchy-launch-or-focus`; the database remains entirely under KeePassXC's
control. The repository contains no database, credentials, tokens, or personal
configuration.

Learn more in the official documentation:

- [Omarchy shell plugins](https://omarchy.org/manual/shell-plugins/)
- [KeePassXC documentation](https://keepassxc.org/docs/)

## Development

Validate local changes before committing:

```bash
omarchy plugin validate ~/.config/omarchy/plugins/chris.keepassxc
```

## License

[MIT](LICENSE)
