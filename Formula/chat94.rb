class Chat94 < Formula
  desc "Encrypted terminal client for OpenClaw agents"
  homepage "https://chat94.com"
  license "GPL-3.0-or-later"

  url "https://github.com/chat94/chat94-cli/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "040419f04d38d5c26b33bdee67dc8faa212f70bbb9e499159dfb0615be63b887"
  version "0.1.2"

  head "https://github.com/chat94/chat94-cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/chat94")
  end

  test do
    assert_match "chat94", shell_output("#{bin}/chat94 --version")
  end
end
