with (import ./nix {});

{ }:

mkShell {
  inputsFrom = [
  ];
  nativeBuildInputs = [
    bazel git jetbrains.idea-community
  ];
}
