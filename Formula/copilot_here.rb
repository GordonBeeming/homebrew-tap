# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.05.21.1"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.21.1-4342adf/copilot_here-osx-arm64.tar.gz"
      sha256 "2d240a65a5eda49651626182c67ee9bfcab898b57f71194f2c58573e11ae2aa8"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.21.1-4342adf/copilot_here-osx-x64.tar.gz"
      sha256 "73a5260a897cd57f3ebaee8f7d8f460ecf12689a6a420f9c9deea3f2f2e7f93e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.21.1-4342adf/copilot_here-linux-arm64.tar.gz"
      sha256 "d09d11971e218f47dfd4b5851b84ec04a2aac766be986077b615ff3634c05c59"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.21.1-4342adf/copilot_here-linux-x64.tar.gz"
      sha256 "856564af1937bd556c008214f3bc0d9e9f57938de98e627210ac83b2e3ff6f2c"
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
