# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.05.21.1"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.21.1-4342adf/copilot_here-osx-arm64.tar.gz"
    sha256 "2d240a65a5eda49651626182c67ee9bfcab898b57f71194f2c58573e11ae2aa8"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.21.1-4342adf/copilot_here-osx-x64.tar.gz"
    sha256 "73a5260a897cd57f3ebaee8f7d8f460ecf12689a6a420f9c9deea3f2f2e7f93e"
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
