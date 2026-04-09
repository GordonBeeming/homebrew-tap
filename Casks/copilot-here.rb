# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.04.09.530"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.530-ae827a4/copilot_here-osx-arm64.tar.gz"
    sha256 "28d646264ccbe98759b759e2a786db74c991e2c2f8bb7bcd72a55a89040e490e"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.530-ae827a4/copilot_here-osx-x64.tar.gz"
    sha256 "43ded50fd6322955258870b453aae6f2151272c9299b3e02dda9df0c0ca78d82"
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
