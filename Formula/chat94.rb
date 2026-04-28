class Chat94 < Formula
  desc "Encrypted terminal client for OpenClaw agents"
  homepage "https://chat94.com"
  license "GPL-3.0-or-later"

  url "https://github.com/chat94/chat94-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b7087b1d3cd4c1344c7e942c25a203b9470354745521a41dacfb2fe6fda0963f"
  version "0.1.0"

  head "https://github.com/chat94/chat94-cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/chat94")
  end

  test do
    assert_match "chat94", shell_output("#{bin}/chat94 --version")
  end
end
