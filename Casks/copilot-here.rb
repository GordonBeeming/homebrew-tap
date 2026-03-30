# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.30.491"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.491-1b75fa6/copilot_here-osx-arm64.tar.gz"
    sha256 "e80d6e8bd88d1b5a72c567224c689bfe85ebd3fee7f8f93e130d1d233e3970c2"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.491-1b75fa6/copilot_here-osx-x64.tar.gz"
    sha256 "5b89824c3d479797e0c50bfc95c8833559a611b5c94ad6ccb366ff564163c4ae"
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
