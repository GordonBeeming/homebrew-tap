# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.10.04.1"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.04.1-b65db7e/copilot_here-osx-arm64.tar.gz"
    sha256 "bd98b1172d459d9233733b00eb9fa490494714641d98d8b450db0ea14e6a34bf"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.04.1-b65db7e/copilot_here-osx-x64.tar.gz"
    sha256 "afba09c9c6ae1f4ecf6b5c350b0c390cd9103dfae011f6c89fb38f349f40d3b4"
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
