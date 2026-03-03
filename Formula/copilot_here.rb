# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.02.19"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-48ec99d/copilot_here-osx-arm64.tar.gz"
      sha256 "1a4651f01f2f56ea207df8fe73f6a4ada47136663a65376c11f9a07134712cf0"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-48ec99d/copilot_here-osx-x64.tar.gz"
      sha256 "4656b5c47c44a7c5f9cf4f06bf97e05c6de5fa1eceaaf4622915e878e4aa7051"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-48ec99d/copilot_here-linux-arm64.tar.gz"
      sha256 "1ca459353c7e1e591fa40de42d52dfba09d0f4d617f22ec0e3f39eb2f7de0aab"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-48ec99d/copilot_here-linux-x64.tar.gz"
      sha256 "17a6e1a53beb1a71517f56b3b359d4e9af83bcf8f961c337ab4bb49f09f944ed"
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
