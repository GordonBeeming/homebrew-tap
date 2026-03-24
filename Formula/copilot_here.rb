# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.24.478"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.478-cddf42b/copilot_here-osx-arm64.tar.gz"
      sha256 "cdce325ae9ec4dbc35042ad9010afcec91f7392a326f0a70dc52fdf14613bee5"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.478-cddf42b/copilot_here-osx-x64.tar.gz"
      sha256 "92a889bebd1b211aa25ce622fa35e10e18c0fcdfa9f88b01698fcee1feb92d22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.478-cddf42b/copilot_here-linux-arm64.tar.gz"
      sha256 "062f129f83d9cebaed1f2bafa82d74b44c1249852de047660eec3913499f2e2a"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.478-cddf42b/copilot_here-linux-x64.tar.gz"
      sha256 "e3fd8351cea0b37f12596e2404b298475bdb090d4f4ea735a50a2d772a082b1c"
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
