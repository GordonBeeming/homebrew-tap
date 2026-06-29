# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.06.29.2"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.2-076d00a/copilot_here-osx-arm64.tar.gz"
    sha256 "80227167d2010c1d997a8564c440acc8f2448be8127534d67fbe1f7580694666"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.2-076d00a/copilot_here-osx-x64.tar.gz"
    sha256 "a788fb4911b5b2891752ec5a18586f264e6ab4709d1f268cda3cecb00504b1ac"
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
