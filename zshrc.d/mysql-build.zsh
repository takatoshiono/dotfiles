mysql_build_dir=$(ghq list -p mysql-build)
if [ -n dir ]; then
    PATH="$mysql_build_dir/bin:$PATH"
fi
