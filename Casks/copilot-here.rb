# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.04.09.534"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.534-c83d23c/copilot_here-osx-arm64.tar.gz"
    sha256 "b0686daa79c7a9b6feef9feff1473b63ee2d29ae4fc8d9b28894d6084352ab46"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.534-c83d23c/copilot_here-osx-x64.tar.gz"
    sha256 "a4130665ec526cfbf72af74093cecbdcb4bbccb603bc187e45a040b0bd39a1b5"
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
