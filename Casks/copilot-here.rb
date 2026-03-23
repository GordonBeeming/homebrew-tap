# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.22.459"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.459-212c62c/copilot_here-osx-arm64.tar.gz"
    sha256 "b31046f2ed1a1cef48156ce9d690468c1ee0b58c8775b46bfe4d3e1c747ce5bf"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.459-212c62c/copilot_here-osx-x64.tar.gz"
    sha256 "ef2fbc4a497bd18884732ec94840522fb906e6d4b531ed33b64084f46495186e"
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
