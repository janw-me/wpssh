Login on external servers using the config in wp-cli.yml files.

# Usage

    wpssh @live

Will look for the @live alias and login over ssh. [documentation](https://make.wordpress.org/cli/handbook/references/config/#config-files)

# Installation.

- clone this directory.
- Symlink the command to a location within the `$PATH` eg:  
`ln -s ~/Dev/wpssh/wpssh ~/.local/bin/wpssh`
- Include the autocomplete in a bashrc file.  
`source ~/Dev/wpssh/wpssh-autocomplete.sh`
