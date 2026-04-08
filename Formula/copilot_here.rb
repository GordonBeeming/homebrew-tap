# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.30.505"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.505-6bfc885/copilot_here-osx-arm64.tar.gz"
      sha256 "9c9d81b324971c1487e06a8c1706c34afd55a858b5977737a25334e1cf52080e"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.505-6bfc885/copilot_here-osx-x64.tar.gz"
      sha256 "530a347dda92770b56a90bb06bb8a752b0625a09ed5ff6aa09426d46967cb0c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.505-6bfc885/copilot_here-linux-arm64.tar.gz"
      sha256 "110ea5c57f72093bdcaabcab9e085da1e8b01d1e32e035a881c755d69f3023e7"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.505-6bfc885/copilot_here-linux-x64.tar.gz"
      sha256 "e4911d9f35c1b3da7c067d4cb46db9734d7deed1910d9577a14b2ddd8a506eee"
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
