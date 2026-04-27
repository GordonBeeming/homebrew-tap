# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.04.27.560"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.27.560-e097691/copilot_here-osx-arm64.tar.gz"
    sha256 "0722bc6e4aba749d125798820f608cdfefbe056ab90db45fcc4235537160f728"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.27.560-e097691/copilot_here-osx-x64.tar.gz"
    sha256 "e3a96d1d987d9b13b628b67b73ab7e36b4b9b86d38fbdf355b8073ee161b8c58"
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
