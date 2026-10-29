# typed: false
# frozen_string_literal: true

class Sprig < Formula
  desc "Copy-on-write Git workspaces on APFS"
  homepage "https://github.com/GordonBeeming/sprig"
  url "https://github.com/GordonBeeming/sprig/releases/download/v0.1.0/sprig-0.1.0-aarch64-apple-darwin.tar.gz"
  version "0.1.0"
  sha256 "f4408a5e47fb2e2ab8f8bad36e776cd3c243bc904706d575f29ff9a60fa457fd"

  depends_on arch: :arm64
  depends_on "git"
  depends_on macos: :tahoe

  def install
    bin.install "tool"
  end

  def caveats
    <<~EOS
      The executable is currently named tool.
      Created and converted workspaces are excluded from Time Machine by default,
      including local uncommitted work. Use --no-time-machine-exclude to opt out.
    EOS
  end

  test do
    assert_match "tool 0.1.0", shell_output("#{bin}/tool --version")
    assert_match '"schema_version":1', shell_output("#{bin}/tool capabilities --json")
  end
end
