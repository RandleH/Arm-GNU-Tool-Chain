arch="$(uname -m)"  # -i is only linux, -m is linux and apple
if [[ "$arch" = x86_64* ]]; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detect System Environment: macOS Intel x64"
    git submodule update macOS-Intel
  else
    echo "Unsupported!"
    exit 1
  fi
elif [[ "$arch" = arm64* ]]; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detect System Environment: macOS Apple Silicon"
    git submodule update macOS-AppleSilicon
  else
    echo "Unsupported!"
    exit 1
  fi
else
  echo "Unsupported!"
  exit 1
fi