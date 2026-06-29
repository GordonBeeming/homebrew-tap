# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.06.29.2"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.2-076d00a/copilot_here-osx-arm64.tar.gz"
      sha256 "80227167d2010c1d997a8564c440acc8f2448be8127534d67fbe1f7580694666"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.2-076d00a/copilot_here-osx-x64.tar.gz"
      sha256 "a788fb4911b5b2891752ec5a18586f264e6ab4709d1f268cda3cecb00504b1ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.2-076d00a/copilot_here-linux-arm64.tar.gz"
      sha256 "6c09518e83a693913fcc0464796afb60843294c0849566566de36c3e8011994f"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.2-076d00a/copilot_here-linux-x64.tar.gz"
      sha256 "cc0e05d696c28f0bf178f374acbc44b035f58c5e82fdb9e724f3f4beac852d5a"
    end
  end

  def install
    bin.install "copilot_here"
  end

  def caveats
    <<~EOS
      copilot_here requires Docker, Podman, or OrbStack to be installed and running.

      To enable the shell function wrapper, run:
        copilot_here --install-shells

      Or manually source the shell script in your profile:
        Bash/Zsh: source "$(brew --prefix)/share/copilot_here/copilot_here.sh"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/copilot_here --version")
  end
end
