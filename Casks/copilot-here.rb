# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.04.09.524"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.524-d0186ca/copilot_here-osx-arm64.tar.gz"
    sha256 "f80e63fd18bfeaa12a2ef07b4e9bce8ea079389d336c305356e2df7ad0509e9a"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.524-d0186ca/copilot_here-osx-x64.tar.gz"
    sha256 "6df6f59ba528c949fe5ff7b3427c36d3b02312466442f6c84cc6e5299f017d23"
  end

  name "copilot_here"
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"

  binary "copilot_here"

  caveats <<~EOS
    copilot_here requires Docker, Podman, or OrbStack to be installed and running.

    To enable the shell function wrapper, run:
      copilot_here --install-shells

    Or manually source the shell script in your profile:
      Bash/Zsh: source "$(brew --prefix)/share/copilot_here/copilot_here.sh"
  EOS
end
