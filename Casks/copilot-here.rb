# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.30.519"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.519-79ebd15/copilot_here-osx-arm64.tar.gz"
    sha256 "736f251951e4a6ad85bb78c86c1962b30392506780bdafff4e6f3823ee7f50fc"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.519-79ebd15/copilot_here-osx-x64.tar.gz"
    sha256 "2b939ea0f45834b8b89780d1ac5d852d71cc308d79c3a3c60ffc5cb17c0a9ca5"
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
