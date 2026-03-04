# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.02.19"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-9ee3e18/copilot_here-osx-arm64.tar.gz"
    sha256 "d12810321818cbf07be2e1b062601384f2974b733530bc1b24fe697f9a4102c6"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-9ee3e18/copilot_here-osx-x64.tar.gz"
    sha256 "31f27cadd53c8ddbe33626250abc82e97770389ba181ca365bf9fd3c0235a78d"
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
