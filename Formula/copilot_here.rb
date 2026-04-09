# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.30.519"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.519-79ebd15/copilot_here-osx-arm64.tar.gz"
      sha256 "736f251951e4a6ad85bb78c86c1962b30392506780bdafff4e6f3823ee7f50fc"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.519-79ebd15/copilot_here-osx-x64.tar.gz"
      sha256 "2b939ea0f45834b8b89780d1ac5d852d71cc308d79c3a3c60ffc5cb17c0a9ca5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.519-79ebd15/copilot_here-linux-arm64.tar.gz"
      sha256 "d11fa6874b5d95df25a253c26ccfa872af350b071a9cd416e357fc917f88c25f"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.519-79ebd15/copilot_here-linux-x64.tar.gz"
      sha256 "eabde8365fc1cdcad0c121496f18d9b59497c35513e09d3c90795970d90509fb"
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
