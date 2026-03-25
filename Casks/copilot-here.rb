# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.24.480"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.480-eb4eed0/copilot_here-osx-arm64.tar.gz"
    sha256 "e23e484c73d38392cc124f2c5d6afb0e4d1f088f5af1c2957f1a3b71a69ef0f1"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.480-eb4eed0/copilot_here-osx-x64.tar.gz"
    sha256 "923bb58894cfa17725de4463741a1944fa8ded5c53272c1ed13019ef7e969667"
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
