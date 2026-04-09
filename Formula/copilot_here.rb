# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.04.09.530"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.530-ae827a4/copilot_here-osx-arm64.tar.gz"
      sha256 "28d646264ccbe98759b759e2a786db74c991e2c2f8bb7bcd72a55a89040e490e"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.530-ae827a4/copilot_here-osx-x64.tar.gz"
      sha256 "43ded50fd6322955258870b453aae6f2151272c9299b3e02dda9df0c0ca78d82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.530-ae827a4/copilot_here-linux-arm64.tar.gz"
      sha256 "dee43c9cd5cd21aa277ab2cbd85a73780dd3aa57f1b3fde73a1a1bc40a3f1a2d"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.530-ae827a4/copilot_here-linux-x64.tar.gz"
      sha256 "49f6c03c15b9e1f34e37fd67ab1eb4ea2dfa4905d1a01c95eced23389baf6b0c"
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
