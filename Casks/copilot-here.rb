# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.08.438"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08.438-85f0c7c/copilot_here-osx-arm64.tar.gz"
    sha256 "e24c0509f39069e5d01c031a1ef989559a9faf5f87ff3e132147ee021b634c4d"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08.438-85f0c7c/copilot_here-osx-x64.tar.gz"
    sha256 "2b014b6ac4bdf9bb59e7901bb62dc7ef0c811c0278ad25a3bff7cd5163438ccb"
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
