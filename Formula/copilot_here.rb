# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.02.19"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-5922c6e/copilot_here-osx-arm64.tar.gz"
      sha256 "ebf74ade1c19eb75fb74a16be0cb982c905c913b2ac82f2e044d75dac528053c"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-5922c6e/copilot_here-osx-x64.tar.gz"
      sha256 "9b990ec162f6dcba0959a0d0c451942b2618cffe50810136bef4adc29b1f6a77"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-5922c6e/copilot_here-linux-arm64.tar.gz"
      sha256 "4918cbd4e0e62842ddf41dda9f58902bf214e0ca6ec52d353f0f1b6abf80b25c"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-5922c6e/copilot_here-linux-x64.tar.gz"
      sha256 "741b8de413874a1cf8994bd51019ca8745f336a473f9fbb364d808d13261d03c"
    end
  end

  depends_on "docker" => :recommended

  def install
    bin.install "copilot_here"
  end

  def caveats
    <<~EOS
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
