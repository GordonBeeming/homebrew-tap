# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.05.13.601"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.601-7ed18f5/copilot_here-osx-arm64.tar.gz"
    sha256 "7530765091a434c3acc63ff62044cbfb7aa56cfc1935447ad3fc94a38bdfb4a0"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.601-7ed18f5/copilot_here-osx-x64.tar.gz"
    sha256 "5644595d169be9129781613873d2c3e4ffe3eac813b95fc8eab26e7b80f559e5"
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
