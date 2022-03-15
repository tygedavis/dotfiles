# dotfiles
Place to store my cool dotfiles

## Instalation

There are a few steps required in order to get these files working.

These dotfiles are meant to be in the HOME directory in order to work.

Create a symbolic link to link these files into the HOME directory.

`ln -sf [path]/dotfiles/.dot_file_name ~/.dot_file_name`
  - s[ymbolic]: create a symbolic link
  - f[orce]: override without warning even if there are the link files with the same name

### Notes:
You may need to update the links any time there is an update to these dotfiles.

### Vision:
  - [ ] Build a script file the will automatically move files and build links for all of the dotfiles inside of this repository.
