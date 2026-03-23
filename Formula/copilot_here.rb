# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.22.465"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.465-da3103a/copilot_here-osx-arm64.tar.gz"
      sha256 "0189a7284b71a1e35d208d04aab9169d8e4fb4fb9f16c7bc29dcab238dec013d"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.465-da3103a/copilot_here-osx-x64.tar.gz"
      sha256 "922135d3828d89d796116958a5bc784bd0f4d71b01387fa80ba3d5af2dff9c56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.465-da3103a/copilot_here-linux-arm64.tar.gz"
      sha256 "ecd0561811515c66067b896a3912857986a9fc7a1b750cc627b0b2a31b85e327"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.465-da3103a/copilot_here-linux-x64.tar.gz"
      sha256 "59f9f6656868572e7e783ef71859b9ece0990487ae03e6e6d82a29f769666875"
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
