# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.08.438"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08.438-85f0c7c/copilot_here-osx-arm64.tar.gz"
      sha256 "e24c0509f39069e5d01c031a1ef989559a9faf5f87ff3e132147ee021b634c4d"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08.438-85f0c7c/copilot_here-osx-x64.tar.gz"
      sha256 "2b014b6ac4bdf9bb59e7901bb62dc7ef0c811c0278ad25a3bff7cd5163438ccb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08.438-85f0c7c/copilot_here-linux-arm64.tar.gz"
      sha256 "2026d1a8c2bb0e61e8081e46fda7132edacdaf1959153e45dfe3b6110c0e3b09"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.08.438-85f0c7c/copilot_here-linux-x64.tar.gz"
      sha256 "48f311f35ec7b7942f9cbdabebdf065aeb813b503a7c79d1c58c35ca529071a6"
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
