# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.02.19"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-93b63c6/copilot_here-osx-arm64.tar.gz"
    sha256 "15b1a3dac74d66e65db705aa5f8d7010ea8cd005ad779be11ff4d244f5cbec6d"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-93b63c6/copilot_here-osx-x64.tar.gz"
    sha256 "5c769da734de2bc49a6ca465e48bf34658bbba398698f82d1613aeefd963ed79"
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
