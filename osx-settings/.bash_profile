# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file
# added by Anaconda 2.3.0 installer
export PATH="/Users/robertarnold/anaconda/bin:$PATH"

# Aliases
alias postgresdb="postgres -D /usr/local/var/postgres"
alias postgresql="psql -d template1"

# PYENV
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

GROOVY_HOME=/usr/local/opt/groovy/libexec
SPARK_HOME=/Users/robertarnold/Applications/spark-1.5.1


PATH=$SPARK_HOME/bin:$PATH

# added by Anaconda2 2.4.1 installer
export PATH="/Users/robertarnold/anaconda/bin:$PATH"

# Default editor
export EDITOR='subl -w'
