# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.06.28.1"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.28.1-70e3a73/copilot_here-osx-arm64.tar.gz"
    sha256 "06a219046ae39ad248c89f064e8587425b89bf09ec7eccda47980b1ce6854bd7"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.28.1-70e3a73/copilot_here-osx-x64.tar.gz"
    sha256 "0420d85f35d07dadf84a1c15815158cdbec964096697aa24fa49d73fa8dfae54"
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
