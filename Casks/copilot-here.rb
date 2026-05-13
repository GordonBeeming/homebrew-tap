# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.05.13.591"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.591-68c2f9c/copilot_here-osx-arm64.tar.gz"
    sha256 "991a65bceea9a2f0aba6a92c50a1d381ccbdff8d81df6eaf8066024b0bf6bece"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.591-68c2f9c/copilot_here-osx-x64.tar.gz"
    sha256 "dc36d281307ae177fb4993e22a1ef3df2d639b10a294a98fe7d4acc34efcf347"
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
