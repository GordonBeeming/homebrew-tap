# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.06.29.1"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.1-944aa3f/copilot_here-osx-arm64.tar.gz"
    sha256 "96156109b9b27c81f7c93e6ad84fc849b5bfcf5bbca49bb002e1076180949178"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.1-944aa3f/copilot_here-osx-x64.tar.gz"
    sha256 "9b187a0468f81652cd11c631578cd4e410a77b955a9155707cae1ca67a140ec1"
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
