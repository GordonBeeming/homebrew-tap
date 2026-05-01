# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.04.30.573"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.573-ef8b15e/copilot_here-osx-arm64.tar.gz"
      sha256 "ac8dea5c301b161bab0fc9a8dfc4d8ad8676dd706b3b5bbaf5c2d0c0518fac51"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.573-ef8b15e/copilot_here-osx-x64.tar.gz"
      sha256 "323a887464e3fe565205b58d48890876bd93b6190a32ccae27d109a4ae8ca490"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.573-ef8b15e/copilot_here-linux-arm64.tar.gz"
      sha256 "e025e74382813e2b150073563e71da89711767172e3dc583f32093f01144472e"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.573-ef8b15e/copilot_here-linux-x64.tar.gz"
      sha256 "0df8a12de5011baa0b72eaa2ba44c54cf29c6abee60f6db6ed245405855beb1b"
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
