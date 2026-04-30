# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.04.30.569"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.569-cb6abe5/copilot_here-osx-arm64.tar.gz"
    sha256 "ec2ef9809c10d11147fe2f695cc1d18f3411e75ff873050f773f39fafbe12fd6"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.569-cb6abe5/copilot_here-osx-x64.tar.gz"
    sha256 "cc1963776d42df344f9a1d9a71e03e5d0e46f785176b77e3d77e00accd3c899b"
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
