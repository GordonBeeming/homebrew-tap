# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.04.09.524"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.524-d0186ca/copilot_here-osx-arm64.tar.gz"
      sha256 "f80e63fd18bfeaa12a2ef07b4e9bce8ea079389d336c305356e2df7ad0509e9a"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.524-d0186ca/copilot_here-osx-x64.tar.gz"
      sha256 "6df6f59ba528c949fe5ff7b3427c36d3b02312466442f6c84cc6e5299f017d23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.524-d0186ca/copilot_here-linux-arm64.tar.gz"
      sha256 "6edde6217ec42d0ae8cbda5138f38946d50947da467081a1c4290dfdfb1dddc5"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.524-d0186ca/copilot_here-linux-x64.tar.gz"
      sha256 "b09ae47984e137c5c51a997f3b9dbe8f71124e39896e08c988dd36cb02c6b830"
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
