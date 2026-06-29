# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.06.29.3"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.3-d59cd5e/copilot_here-osx-arm64.tar.gz"
    sha256 "1c3eb9bb7ed638d49502a6977bc5a94825edf243034a78c9f267df0b77a2d902"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.3-d59cd5e/copilot_here-osx-x64.tar.gz"
    sha256 "bd79b95fd6222f06fc80091a98da794440210e8e42ed25c2e32c79ad74626773"
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
