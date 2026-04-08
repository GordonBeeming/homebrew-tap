# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.30.505"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.505-6bfc885/copilot_here-osx-arm64.tar.gz"
    sha256 "9c9d81b324971c1487e06a8c1706c34afd55a858b5977737a25334e1cf52080e"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.505-6bfc885/copilot_here-osx-x64.tar.gz"
    sha256 "530a347dda92770b56a90bb06bb8a752b0625a09ed5ff6aa09426d46967cb0c5"
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
