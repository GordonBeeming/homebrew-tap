# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.04.09.534"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.534-c83d23c/copilot_here-osx-arm64.tar.gz"
      sha256 "b0686daa79c7a9b6feef9feff1473b63ee2d29ae4fc8d9b28894d6084352ab46"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.534-c83d23c/copilot_here-osx-x64.tar.gz"
      sha256 "a4130665ec526cfbf72af74093cecbdcb4bbccb603bc187e45a040b0bd39a1b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.534-c83d23c/copilot_here-linux-arm64.tar.gz"
      sha256 "704b9ac66ae40e7d5f350928c5a3216a6270d4efb6d66401016b5c2c9f3d3a2c"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.534-c83d23c/copilot_here-linux-x64.tar.gz"
      sha256 "bf44a6ffc71fffe6c35b74080de2782f0f536f413bdc185b0ed026cca39b6302"
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
