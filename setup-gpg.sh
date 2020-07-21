sudo apt install gnupg

# https://gist.github.com/chrisroos/1205934

# gpg -a --export PUB > public-gpg.key
# gpg -a --export-secret-keys PUB > secret-gpg.key
# gpg --export-ownertrust > ownertrust-gpg.txt

gpg --import secret-gpg.gpg
gpg --import-ownertrust ownertrust-gpg.txt