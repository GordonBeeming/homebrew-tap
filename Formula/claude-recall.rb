# typed: false
# frozen_string_literal: true

class ClaudeRecall < Formula
  desc "AI-powered TUI to search Claude Code session history"
  homepage "https://github.com/GordonBeeming/claude-recall"
  version "0.1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.1-cc7ddfb/claude-recall-osx-arm64.tar.gz"
      sha256 "8c4d142ebd61c92a9902168dab804ec63e179fe73fc04850edce032258448f40"
    else
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.1-cc7ddfb/claude-recall-osx-x64.tar.gz"
      sha256 "a7892b22c08ca20890a209f6b8a16f3e6674dde88719ca20e907e40f43c5796b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.1-cc7ddfb/claude-recall-linux-arm64.tar.gz"
      sha256 "65ae6952e92b99f0e32c485cfee6fab78d3566d80429438de35b3d3a5ceaf38b"
    else
      url "https://github.com/GordonBeeming/claude-recall/releases/download/v0.1.0.1-cc7ddfb/claude-recall-linux-x64.tar.gz"
      sha256 "3c49446c35064bd74e8f6af8b1cde8d40b0543dd06dc933fd6fc9d182732d1aa"
    end
  end

  def install
    bin.install "claude-recall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-recall --version")
  end
end
