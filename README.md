# dotfiles

This repo contains my dotfile configuration, allowing for a consistent computing experience across multiple machines. These days I primarily am switching between MacOS and Ubuntu.

Various configuration files in this repo are managed using GNU Stow. Stow manages symlinks for all of config files using the following command:

```
stow .
```

Ensure that stow and git are installed on your system. Enter the dotfiles directory within your home directory and use the command above to create symlinks from .config to dotfiles directories.

For additional information, this youtube video is a helpful starting point: [video](https://youtu.be/y6XCebnB9gs?si=rf9vj4N-tUrOdg4F)
