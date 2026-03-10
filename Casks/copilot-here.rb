# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.08.441"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08.441-02dddb4/copilot_here-osx-arm64.tar.gz"
    sha256 "67a67e627cea517736c701a9b7e7bcd3bf9f6a32d2978bda804985cbe322630b"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08.441-02dddb4/copilot_here-osx-x64.tar.gz"
    sha256 "f22c4fd13efa17541d99778b481237ee36d2a9a71e3eb9b973bb69b6994832f5"
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
