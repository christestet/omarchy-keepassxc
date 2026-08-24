# KeePassXC for the Omarchy bar

A minimal Omarchy shell bar widget that opens or focuses KeePassXC. The plugin
does not read the KeePass database, passwords, or clipboard.

## Installation

```bash
omarchy plugin add https://github.com/christestet/omarchy-keepassxc.git --enable
```

Create the local configuration:

```bash
cp ~/.config/omarchy/plugins/chris.keepassxc/config.example \
  ~/.config/omarchy/plugins/chris.keepassxc/config
```

Edit `config` and set `database_path` to the local KDBX file. The config file is
ignored by Git. If it is absent or the value is empty, the widget opens
KeePassXC without selecting a database.

## Security

The widget only invokes KeePassXC through Omarchy's `omarchy-launch-or-focus`.
It never opens or parses the database and does not access credentials.

## Development

Validate changes with:

```bash
omarchy plugin validate ~/.config/omarchy/plugins/chris.keepassxc
```
