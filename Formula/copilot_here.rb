# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.02.19"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-93b63c6/copilot_here-osx-arm64.tar.gz"
      sha256 "15b1a3dac74d66e65db705aa5f8d7010ea8cd005ad779be11ff4d244f5cbec6d"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-93b63c6/copilot_here-osx-x64.tar.gz"
      sha256 "5c769da734de2bc49a6ca465e48bf34658bbba398698f82d1613aeefd963ed79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-93b63c6/copilot_here-linux-arm64.tar.gz"
      sha256 "825b26895fcc8bd1e90fc8946753808a53ab55ef9c50c0949fe58ac0c334df47"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-93b63c6/copilot_here-linux-x64.tar.gz"
      sha256 "271e908efdb72ccc5b2b911c0e2dd810e1a9d6280ab79bc5572009cd31f48bb2"
    end
  end

  def install
    bin.install "copilot_here"
  end

  def caveats
    <<~EOS
      copilot_here requires Docker to be installed and running.

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
