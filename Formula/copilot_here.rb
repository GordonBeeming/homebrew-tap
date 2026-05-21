# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.05.13.601"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.601-7ed18f5/copilot_here-osx-arm64.tar.gz"
      sha256 "7530765091a434c3acc63ff62044cbfb7aa56cfc1935447ad3fc94a38bdfb4a0"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.601-7ed18f5/copilot_here-osx-x64.tar.gz"
      sha256 "5644595d169be9129781613873d2c3e4ffe3eac813b95fc8eab26e7b80f559e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.601-7ed18f5/copilot_here-linux-arm64.tar.gz"
      sha256 "1a6785abada31d5781bcbd372b97d48d2eaf5a9424d63e4e67563232961ad6f5"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.601-7ed18f5/copilot_here-linux-x64.tar.gz"
      sha256 "e48c820aa40c915c0e5a0e26db77bfd6a713057a64301a36fcd78f6ba6ce583c"
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
