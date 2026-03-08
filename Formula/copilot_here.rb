# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.08"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08-9bf42a8/copilot_here-osx-arm64.tar.gz"
      sha256 "e1ed6f28dd9bbe058a994a1aea0e5e9f89818ba9c56db14cfc38ada647f5c7e6"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08-9bf42a8/copilot_here-osx-x64.tar.gz"
      sha256 "f4e9d35240fc28dea72c113867d6649c1f8b702226a689c12d84f31870a27f73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08-9bf42a8/copilot_here-linux-arm64.tar.gz"
      sha256 "605fd1a3c2e61359363c246f71498ac45dfc7db250035764392a016dcb5c5c50"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08-9bf42a8/copilot_here-linux-x64.tar.gz"
      sha256 "f5e49ccce166ea52ef9ad6a17cf9c5e8b585f9869818398e7006346f56e79231"
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
