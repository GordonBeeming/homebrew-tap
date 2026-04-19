# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.04.20.548"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.20.548-7725b10/copilot_here-osx-arm64.tar.gz"
    sha256 "c0c47b89ef163d2fdd77566ed1ff8b40b2543e68251b1384d44ad6c30ea704ed"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.20.548-7725b10/copilot_here-osx-x64.tar.gz"
    sha256 "9ff950b13b45b1b0f62d71782e381b4a72b0ba769c5999adb5ef271c018040f2"
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
