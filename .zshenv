# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Load the following dotfiles
# * ~/.path can be used to extend `$PATH`
# * ~/.extra can be used to extend anything that doesn't fit in any other file
for file in ~/.{path,aliases,exports,functions}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
