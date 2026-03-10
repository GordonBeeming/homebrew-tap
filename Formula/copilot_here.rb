# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.08.441"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08.441-02dddb4/copilot_here-osx-arm64.tar.gz"
      sha256 "67a67e627cea517736c701a9b7e7bcd3bf9f6a32d2978bda804985cbe322630b"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08.441-02dddb4/copilot_here-osx-x64.tar.gz"
      sha256 "f22c4fd13efa17541d99778b481237ee36d2a9a71e3eb9b973bb69b6994832f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08.441-02dddb4/copilot_here-linux-arm64.tar.gz"
      sha256 "8e1021d75f3628c16825aef2d8733c8409aee50fcacff7ff3cc9aedb93afb87a"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08.441-02dddb4/copilot_here-linux-x64.tar.gz"
      sha256 "97b8efe047230c104d84a5bf0121101954b95f73eba70f9179d23a466f3c6867"
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
