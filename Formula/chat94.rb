class Chat94 < Formula
  desc "Encrypted terminal client for OpenClaw agents"
  homepage "https://chat94.com"
  license "GPL-3.0-or-later"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/chat94/chat94-cli/releases/download/v0.1.3/chat94-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "49babaae0485a4f617d698ec0a53301401b7546fbd8d832f41d6b3f9f67f3788"
    end
    on_intel do
      url "https://github.com/chat94/chat94-cli/releases/download/v0.1.3/chat94-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "4d5c05f10a9e092a701d36d3548eae38812937e7b32566c5cdbe686a2d46a175"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chat94/chat94-cli/releases/download/v0.1.3/chat94-0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be6f4832a2a145c51fccdfb50e0b904eb840e759eeb70e66104bc0b86b2c09b3"
    end
    on_intel do
      url "https://github.com/chat94/chat94-cli/releases/download/v0.1.3/chat94-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "558b1bc5b1e5c3a125e568af182064f02ae682095026ad4758a983acf6e2f046"
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
