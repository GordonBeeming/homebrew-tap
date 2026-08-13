# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.08.13.1"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.08.13.1-523b95e/copilot_here-osx-arm64.tar.gz"
      sha256 "d00848b2628bfc357f2a718cb5162be4e40ba9f074c0a90c95f47e1360fda826"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.08.13.1-523b95e/copilot_here-osx-x64.tar.gz"
      sha256 "765439429584c15fc6e348333d6f486b74e4665bdfee5e3bdb997d7f5aff0d30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.08.13.1-523b95e/copilot_here-linux-arm64.tar.gz"
      sha256 "fc1dacdf018a6a759a74ff17ae599196dfd13f446f9f089625becb4594e1b181"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.08.13.1-523b95e/copilot_here-linux-x64.tar.gz"
      sha256 "7328e6dc1e8eae0c83d39435b5095e9877157aa9aa2f427360233c10888cc9a7"
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
