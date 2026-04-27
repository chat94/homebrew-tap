class Chat94 < Formula
  desc "Encrypted terminal client for OpenClaw agents"
  homepage "https://chat94.com"
  license "MIT"

  # No tagged release yet. Until the first release tarball is published,
  # users must install with `--HEAD`:
  #
  #   brew install --HEAD chat94/tap/chat94
  #
  # When you cut v0.1.0:
  #   1. `git tag v0.1.0 && git push --tags` in chat94/chat94-cli
  #   2. Uncomment the stable block below
  #   3. Replace the sha256 with: `curl -sL <url> | shasum -a 256`
  #
  # url "https://github.com/chat94/chat94-cli/archive/refs/tags/v0.1.0.tar.gz"
  # sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  # version "0.1.0"

  head "https://github.com/chat94/chat94-cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/chat94")
  end

  test do
    assert_match "chat94", shell_output("#{bin}/chat94 --version")
  end
end
