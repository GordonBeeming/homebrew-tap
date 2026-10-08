# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.10.08.1"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.08.1-428859a/copilot_here-osx-arm64.tar.gz"
    sha256 "f92fad4fc2403e0128d95e3760d52ac9233358e3736a4c4d78f4d834f25dfce7"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.08.1-428859a/copilot_here-osx-x64.tar.gz"
    sha256 "9905c4326e104cf8bb86f5f0a8992f3426bf7c58b77f821ecbed6183bad3a9ce"
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
