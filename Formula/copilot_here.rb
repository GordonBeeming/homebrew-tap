# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.24.472"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.472-4a7957a/copilot_here-osx-arm64.tar.gz"
      sha256 "bd181fc5082b4dd05d996799059e893f61820f200f27331a0ff8467abb79a456"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.472-4a7957a/copilot_here-osx-x64.tar.gz"
      sha256 "0829752bccc8562a78394727caab8752fa53e267f78ca3be34cb04a8522ef3d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.472-4a7957a/copilot_here-linux-arm64.tar.gz"
      sha256 "e3d716c11523679ebd9e3c406358810f3d28f9eeca74f20c829e97fd60ef3064"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.472-4a7957a/copilot_here-linux-x64.tar.gz"
      sha256 "20be3bd4214288cd22c5653dcee66382fa3af8196b486ae2dd595882386a761b"
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
