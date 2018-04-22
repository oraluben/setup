main() {
  hash git >/dev/null 2>&1 || {
    echo "Error: git is not installed"
    exit 1
  }
  REPO="$(mktemp -d)"
  git clone https://github.com/oraluben/setup.git $REPO
  echo "Cloned into $REPO"
  (cd $REPO; ./setup.py)
}

main
