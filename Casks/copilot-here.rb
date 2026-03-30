# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.30.489"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.489-60474ed/copilot_here-osx-arm64.tar.gz"
    sha256 "3aded34ff9a8e423aa79b4e3c007c93537de6dc573a96d1b97f148a79dd3329c"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.489-60474ed/copilot_here-osx-x64.tar.gz"
    sha256 "4df343926c37b9b2c47830ea3067c450669c1af5f2f1bbe7aeabf243a4ce383a"
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
