# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.02.19"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-d63dfa4/copilot_here-osx-arm64.tar.gz"
      sha256 "ca5436831a0442f221fab366dabdbe220d00e0f2416fdef61846a01ee437e4c8"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-d63dfa4/copilot_here-osx-x64.tar.gz"
      sha256 "073efe38ca797b4261003ef42967bbb2df3942626e31a2e3029f0eea827a9a57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-d63dfa4/copilot_here-linux-arm64.tar.gz"
      sha256 "fec6480af927732a5e4a50ec6bbe1fc6439e0fac506ea852d02099814a7b68dc"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-d63dfa4/copilot_here-linux-x64.tar.gz"
      sha256 "0cdf1bc36c775d6115b78b4f488e209a5e707214faa8c9df888884dd9b43be01"
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
