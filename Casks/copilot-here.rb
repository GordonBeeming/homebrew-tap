# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.22.456"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.456-db29e3d/copilot_here-osx-arm64.tar.gz"
    sha256 "71a3ceb363dfb7b79d18eea52bfb46d6cf36aa4089834919d2d0c89b6e2c4b63"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.456-db29e3d/copilot_here-osx-x64.tar.gz"
    sha256 "9227cadcb83ef12681e7e1dd8cbfcec7b3fca1c5c4a7335e218fdd2f35c0e1a5"
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
