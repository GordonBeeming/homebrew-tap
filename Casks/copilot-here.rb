# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.04.09.526"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.526-4b8fb59/copilot_here-osx-arm64.tar.gz"
    sha256 "b98e6082e66c3b86637fb6493faf57ddacf061ff5579bb549c82288735cc6df9"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.526-4b8fb59/copilot_here-osx-x64.tar.gz"
    sha256 "c00294178aea3cef7b524db069af2dea1e1a7abd90a1ab86c8e8a66263b9bc70"
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
