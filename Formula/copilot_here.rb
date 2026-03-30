# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.30.489"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.489-60474ed/copilot_here-osx-arm64.tar.gz"
      sha256 "3aded34ff9a8e423aa79b4e3c007c93537de6dc573a96d1b97f148a79dd3329c"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.489-60474ed/copilot_here-osx-x64.tar.gz"
      sha256 "4df343926c37b9b2c47830ea3067c450669c1af5f2f1bbe7aeabf243a4ce383a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.489-60474ed/copilot_here-linux-arm64.tar.gz"
      sha256 "1686d7e58b185a7464edcb7da2ee6de83846567bc2be5d4bb66e4396306300c6"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.489-60474ed/copilot_here-linux-x64.tar.gz"
      sha256 "a5e0a193224c5ab6d281a584ab31a44fa6d37c21b19b7e7d26e9b2e3fe066e1e"
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
