# typed: false
# frozen_string_literal: true

class ClaudeRecall < Formula
  desc "AI-powered TUI to search Claude Code session history"
  homepage "https://github.com/GordonBeeming/claude-recall"
  version "0.1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.2-0c13d23-a1/claude-recall-osx-arm64.tar.gz"
      sha256 "83bd186c75e55ed7e8659ca90049f88f900eef4b0350e16dbc08df8425d86129"
    else
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.2-0c13d23-a1/claude-recall-osx-x64.tar.gz"
      sha256 "7a424bfdc8a4c4b057887e3584c2f308b57acbfae7f760f61884e91b5ec2622d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.2-0c13d23-a1/claude-recall-linux-arm64.tar.gz"
      sha256 "f56911d2d08e7ec097c55bcdc1c11dcd2416570801995e109d692f3aad4660e3"
    else
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.2-0c13d23-a1/claude-recall-linux-x64.tar.gz"
      sha256 "7510c13978a345c3815c5d8f5e01572c11737638b4be226a4fdd61b04b5c2d22"
    end
  end

  def install
    bin.install "claude-recall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-recall --version")
  end
end
