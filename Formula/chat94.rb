class Chat94 < Formula
  desc "Encrypted terminal client for OpenClaw agents"
  homepage "https://chat94.com"
  license "GPL-3.0-or-later"

  url "https://github.com/chat94/chat94-cli/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "6221ed8d02b9d33df7a2685557df3fb00f0675ec92ea403dbf0556985486494d"
  version "0.1.3"

  head "https://github.com/chat94/chat94-cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/chat94")
  end

  test do
    assert_match "chat94", shell_output("#{bin}/chat94 --version")
  end
end
