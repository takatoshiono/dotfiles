if [ -n $($HOME/bin/ghq list -p mysql-build) ]; then
    PATH="$($HOME/bin/ghq list -p mysql-build)/bin:$PATH"
fi
