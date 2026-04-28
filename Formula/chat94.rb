class Chat94 < Formula
  desc "Encrypted terminal client for OpenClaw agents"
  homepage "https://chat94.com"
  license "GPL-3.0-or-later"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/chat94/chat94-cli/releases/download/v0.1.4/chat94-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "b9e073158d8920839fdfead06d39a35d05907273bb394800fb273b81ee9a7ea2"
    end
    on_intel do
      url "https://github.com/chat94/chat94-cli/releases/download/v0.1.4/chat94-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "28dbdf2e4334f84c050eace7198e5250648cd47a894686a608bf940adeb60a94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chat94/chat94-cli/releases/download/v0.1.4/chat94-0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f485f12a30ed345643d737e78f0b8bda1ae95aa6dd8b72902559b805c449300"
    end
    on_intel do
      url "https://github.com/chat94/chat94-cli/releases/download/v0.1.4/chat94-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a0ece16b3374e9e572525522f4c54d24b146f06cde9e015c3ce114352a4fd11"
    end
  end

  head "https://github.com/chat94/chat94-cli.git", branch: "main"

  def install
    bin.install "chat94"
  end

  test do
    assert_match "chat94", shell_output("#{bin}/chat94 --version")
  end
end
