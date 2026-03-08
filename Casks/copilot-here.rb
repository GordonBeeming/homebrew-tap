# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.08"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08-9bf42a8/copilot_here-osx-arm64.tar.gz"
    sha256 "e1ed6f28dd9bbe058a994a1aea0e5e9f89818ba9c56db14cfc38ada647f5c7e6"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08-9bf42a8/copilot_here-osx-x64.tar.gz"
    sha256 "f4e9d35240fc28dea72c113867d6649c1f8b702226a689c12d84f31870a27f73"
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
