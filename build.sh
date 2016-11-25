
if   [ "$1" == "gitbook" ]; then
  build_gitbook
elif [ "$1" == "latex" || "$1" == "tex" ]; then
  build_latex
else
  # nil
  echo "no cse of i"
  build_gitbook
  build_latex
fi

build_latex() {
  cd latex
  . build.sh
  cd ..
}

build_gitbook() {
  cd gitbook
  npm i
  gitbook install
  gitbook build
  gitbook serve
  cd ..
}
