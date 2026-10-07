# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.10.07.1"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.07.1-aa3b159/copilot_here-osx-arm64.tar.gz"
      sha256 "448edb8cefaa6ca6ab4f36f176b4a845924a5a7dc4a66cb3016e58407becc37b"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.07.1-aa3b159/copilot_here-osx-x64.tar.gz"
      sha256 "97716104705c0929bc275edfeba09a2629543d4ff5e85eefc90eadb1758ce957"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.07.1-aa3b159/copilot_here-linux-arm64.tar.gz"
      sha256 "882fe5d52b9ccd8c1b3d6304b01682ccb8e723b7a91223c70dfb8226834c6d73"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.07.1-aa3b159/copilot_here-linux-x64.tar.gz"
      sha256 "391b7dac06d047e44e821403c6cc25a40a303d4351e6583896d909d231d95dd6"
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
