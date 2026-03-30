# typed: false
# frozen_string_literal: true

class ClaudeRecall < Formula
  desc "AI-powered TUI to search Claude Code session history"
  homepage "https://github.com/GordonBeeming/claude-recall"
  version "0.1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.3-1c595ed-a1/claude-recall-osx-arm64.tar.gz"
      sha256 "163f914634b506d04c7cf9bb0d573dc1f9ae76e0220a5eb94d6e57beaaa4f373"
    else
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.3-1c595ed-a1/claude-recall-osx-x64.tar.gz"
      sha256 "ac5735b6cad77f635adb44ecb6c0f6ae19fcdc4d1057d96b32e8757ac496050a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.3-1c595ed-a1/claude-recall-linux-arm64.tar.gz"
      sha256 "6ba5158fb28cc50b04291f9ae8fd9f3d0226209ed3a8e81b77462d375fb209be"
    else
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.3-1c595ed-a1/claude-recall-linux-x64.tar.gz"
      sha256 "bdc24d2845b53b916b5593ecf102c6f7cc189caec0c39eedb0f57258752dbcb3"
    end
  end

  def install
    bin.install "claude-recall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-recall --version")
  end
end
