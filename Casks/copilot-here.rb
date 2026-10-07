# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.10.07.1"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.07.1-aa3b159/copilot_here-osx-arm64.tar.gz"
    sha256 "448edb8cefaa6ca6ab4f36f176b4a845924a5a7dc4a66cb3016e58407becc37b"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.07.1-aa3b159/copilot_here-osx-x64.tar.gz"
    sha256 "97716104705c0929bc275edfeba09a2629543d4ff5e85eefc90eadb1758ce957"
  end

  name "copilot_here"
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"

  binary "copilot_here"

  caveats <<~EOS
    copilot_here requires Docker, Podman, or OrbStack to be installed and running.

    To enable the shell function wrapper, run:
      copilot_here --install-shells

    Or manually source the shell script in your profile:
      Bash/Zsh: source "$(brew --prefix)/share/copilot_here/copilot_here.sh"
  EOS
end
