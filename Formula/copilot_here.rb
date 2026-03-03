# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.02.19"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-b980fba/copilot_here-osx-arm64.tar.gz"
      sha256 "f0aef4a928674c16185a4ce78e1f7af7287e6f7bc2da7cdf212e0749b8fe6e91"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-b980fba/copilot_here-osx-x64.tar.gz"
      sha256 "9f6ad5ff42521591ba7ff17de34d176fd560f03cd1f26e68610f1e943a1c2f4f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-b980fba/copilot_here-linux-arm64.tar.gz"
      sha256 "c8ae2ec19279edd954db9dc3c5adcc64784db58f171c43b42a08501e92d9e02e"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-b980fba/copilot_here-linux-x64.tar.gz"
      sha256 "059603a012b98894e2cde109b9e0dc49d21f166ba9f580cba02dd2f2ef1b7c8a"
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
