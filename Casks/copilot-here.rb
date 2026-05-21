# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.05.13.602"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.602-f3f3fab/copilot_here-osx-arm64.tar.gz"
    sha256 "1ca1e59414873949cee58f7c100838c779a84085f446c22ab7ceeb9744673755"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.602-f3f3fab/copilot_here-osx-x64.tar.gz"
    sha256 "55ac8651c4bbfe54f52e1b45a98ffa838ed2ad93c323e754fb08ee5cff3e8bbe"
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
