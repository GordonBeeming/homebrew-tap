# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.06.29.3"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.3-d59cd5e/copilot_here-osx-arm64.tar.gz"
      sha256 "1c3eb9bb7ed638d49502a6977bc5a94825edf243034a78c9f267df0b77a2d902"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.3-d59cd5e/copilot_here-osx-x64.tar.gz"
      sha256 "bd79b95fd6222f06fc80091a98da794440210e8e42ed25c2e32c79ad74626773"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.3-d59cd5e/copilot_here-linux-arm64.tar.gz"
      sha256 "df2faed4ae94624d77980710c20ba721d0aa2040b35e334d37937df485d35c81"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.06.29.3-d59cd5e/copilot_here-linux-x64.tar.gz"
      sha256 "cc646e5a62da460db2b95623cf4f8174f6bfaddbb1d5489e03e842a716fdb77b"
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
