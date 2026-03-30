# typed: false
# frozen_string_literal: true

class ClaudeRecall < Formula
  desc "AI-powered TUI to search Claude Code session history"
  homepage "https://github.com/GordonBeeming/claude-recall"
  version "0.1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.4-1e8521e-a1/claude-recall-osx-arm64.tar.gz"
      sha256 "88b62f4dff80e5bf9927d40b23bb8dd061be6a9ab3c499f0d21469c3db883b7f"
    else
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.4-1e8521e-a1/claude-recall-osx-x64.tar.gz"
      sha256 "f54c3c3b5aebd793ea59bb3989ba9294fb4363e85fac4b9062884c29e17ee595"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.4-1e8521e-a1/claude-recall-linux-arm64.tar.gz"
      sha256 "0d197d8ee9f30f26744a71ffa895cf778d4920d2b52e07900f9d3b448c06df7c"
    else
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.4-1e8521e-a1/claude-recall-linux-x64.tar.gz"
      sha256 "5d7ef943e5720d854c2f20f9e0e29a446a6c9a6f61a8674cf3b93529db1cfc79"
    end
  end

  def install
    bin.install "claude-recall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-recall --version")
  end
end
