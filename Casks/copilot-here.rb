# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.08.13.1"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.08.13.1-523b95e/copilot_here-osx-arm64.tar.gz"
    sha256 "d00848b2628bfc357f2a718cb5162be4e40ba9f074c0a90c95f47e1360fda826"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.08.13.1-523b95e/copilot_here-osx-x64.tar.gz"
    sha256 "765439429584c15fc6e348333d6f486b74e4665bdfee5e3bdb997d7f5aff0d30"
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
