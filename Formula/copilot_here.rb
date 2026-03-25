# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.24.480"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.480-eb4eed0/copilot_here-osx-arm64.tar.gz"
      sha256 "e23e484c73d38392cc124f2c5d6afb0e4d1f088f5af1c2957f1a3b71a69ef0f1"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.480-eb4eed0/copilot_here-osx-x64.tar.gz"
      sha256 "923bb58894cfa17725de4463741a1944fa8ded5c53272c1ed13019ef7e969667"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.480-eb4eed0/copilot_here-linux-arm64.tar.gz"
      sha256 "9d39d26687102dba93a30f9e25a15784af89086f63671b3780121fbc1dcb8fe7"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.480-eb4eed0/copilot_here-linux-x64.tar.gz"
      sha256 "ff397fa211fb3c6c0bdf390163956d0930fe6167800789bb7e33e546a81159dd"
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
