# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.06.28.1"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.28.1-70e3a73/copilot_here-osx-arm64.tar.gz"
      sha256 "06a219046ae39ad248c89f064e8587425b89bf09ec7eccda47980b1ce6854bd7"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.28.1-70e3a73/copilot_here-osx-x64.tar.gz"
      sha256 "0420d85f35d07dadf84a1c15815158cdbec964096697aa24fa49d73fa8dfae54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.28.1-70e3a73/copilot_here-linux-arm64.tar.gz"
      sha256 "2522bf7231fe6d604230af9cefb4a69e6531d03ce252bacab1e3e70070fce823"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.28.1-70e3a73/copilot_here-linux-x64.tar.gz"
      sha256 "24d7ffb8e0394cd57480e24d846105f1b5bcf314176face714de80dcebf23603"
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
