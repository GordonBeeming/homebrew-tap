# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.22.465"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.465-da3103a/copilot_here-osx-arm64.tar.gz"
    sha256 "0189a7284b71a1e35d208d04aab9169d8e4fb4fb9f16c7bc29dcab238dec013d"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.465-da3103a/copilot_here-osx-x64.tar.gz"
    sha256 "922135d3828d89d796116958a5bc784bd0f4d71b01387fa80ba3d5af2dff9c56"
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
