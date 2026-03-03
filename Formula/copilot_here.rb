# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.02.19"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-86c820d/copilot_here-osx-arm64.tar.gz"
      sha256 "d740710b3f0e3177752a62d126b2df46233b86ad0ebdbef86946dfe78b6f80ef"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-86c820d/copilot_here-osx-x64.tar.gz"
      sha256 "2e69da7bacc3a1b26c4d1b7f4b3cde5bebd6596b5088bfca2dc82d6c005f4a96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-86c820d/copilot_here-linux-arm64.tar.gz"
      sha256 "4ce0bab5674d8693f5aaa957a8a1d1ed1109509fb42e92481a356a127a086e58"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-86c820d/copilot_here-linux-x64.tar.gz"
      sha256 "7302942f2070ed01684efbf3f3a72425ac41189be8f3fa805abc11053f8221cc"
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
