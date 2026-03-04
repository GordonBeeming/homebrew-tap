# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.02.19"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-bea3d9f/copilot_here-osx-arm64.tar.gz"
      sha256 "3aff7f454ace5ba6ae2bc4ec7f35c19716b6fa13dbabd5e294f07997aefa6b05"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-bea3d9f/copilot_here-osx-x64.tar.gz"
      sha256 "dac9bde380ddd8a616662202d713c87bbf49d9b6e0b7174907479960ab796f94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-bea3d9f/copilot_here-linux-arm64.tar.gz"
      sha256 "082eabdefa771d342d21b16dee6ea63c367525a47e3abfab36ccf847596de629"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-bea3d9f/copilot_here-linux-x64.tar.gz"
      sha256 "9566f5df4c7c083b749f20098a7766123f796dc951fa640fbefe451574906f0a"
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
