# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.06.29.1"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.1-944aa3f/copilot_here-osx-arm64.tar.gz"
      sha256 "96156109b9b27c81f7c93e6ad84fc849b5bfcf5bbca49bb002e1076180949178"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.1-944aa3f/copilot_here-osx-x64.tar.gz"
      sha256 "9b187a0468f81652cd11c631578cd4e410a77b955a9155707cae1ca67a140ec1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.1-944aa3f/copilot_here-linux-arm64.tar.gz"
      sha256 "759b6857356cdebca720ad88450a90e6d05b78f79e658ecb094a2168b27d4ec0"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.1-944aa3f/copilot_here-linux-x64.tar.gz"
      sha256 "216755c00cf8f4166dc4ed2987df49bfd479ae506b0c22e40c86f930ba0fbaf6"
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
