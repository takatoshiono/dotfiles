if [ -n $(ghq list -p mysql-build) ]; then
    PATH="$(ghq list -p mysql-build)/bin:$PATH"
fi
