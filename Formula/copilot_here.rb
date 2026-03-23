# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.22.459"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.459-212c62c/copilot_here-osx-arm64.tar.gz"
      sha256 "b31046f2ed1a1cef48156ce9d690468c1ee0b58c8775b46bfe4d3e1c747ce5bf"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.459-212c62c/copilot_here-osx-x64.tar.gz"
      sha256 "ef2fbc4a497bd18884732ec94840522fb906e6d4b531ed33b64084f46495186e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.459-212c62c/copilot_here-linux-arm64.tar.gz"
      sha256 "a6d2a2d77fcdb142a565f4df4b202438dea3c8e4d41b38302eb27c0e51c72332"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.459-212c62c/copilot_here-linux-x64.tar.gz"
      sha256 "63381f5253477d781cf81c99342ccfa051f8a38ef0c02935ab770b28d8995863"
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
