# typed: false
# frozen_string_literal: true

class Sprig < Formula
  desc "Fast, space-efficient Git worktrees using copy-on-write"
  homepage "https://github.com/GordonBeeming/sprig"
  url "https://github.com/GordonBeeming/sprig/releases/download/v0.2.2/sprig-0.2.2-aarch64-apple-darwin.tar.gz"
  version "0.2.2"
  sha256 "18c9337fed26b804f1cea0c9a772962c7ac914057cf430440e6aa414ae13549c"
  # Functional Source License 1.1 with MIT future licence.
  license :cannot_represent

  depends_on arch: :arm64
  depends_on "git"
  depends_on macos: :tahoe

  def install
    bin.install "sprig"
    pkgshare.install "LICENSE"
    pkgshare.install "adopt-worktrees.py"
  end

  def caveats
    <<~EOS
      Created and converted workspaces are excluded from Time Machine by default,
      including local uncommitted work. Use --no-time-machine-exclude to opt out.
    EOS
  end

  test do
    assert_match "sprig 0.2.2", shell_output("#{bin}/sprig --version")
    assert_match '"schema_version":1', shell_output("#{bin}/sprig capabilities --json")
  end
end
