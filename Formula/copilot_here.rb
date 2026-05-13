# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.05.13.591"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.591-68c2f9c/copilot_here-osx-arm64.tar.gz"
      sha256 "991a65bceea9a2f0aba6a92c50a1d381ccbdff8d81df6eaf8066024b0bf6bece"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.591-68c2f9c/copilot_here-osx-x64.tar.gz"
      sha256 "dc36d281307ae177fb4993e22a1ef3df2d639b10a294a98fe7d4acc34efcf347"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.591-68c2f9c/copilot_here-linux-arm64.tar.gz"
      sha256 "07d85bc4acaccaaf1a04c55ac728e94ed0b4737cabfe24aa463e1f67bb8f60a5"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.591-68c2f9c/copilot_here-linux-x64.tar.gz"
      sha256 "35bbea61f959db1eee48486171254a81553abd5565c69ff92e4f66e6dea7eaf3"
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
