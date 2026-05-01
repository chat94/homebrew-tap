class Chat4000 < Formula
  desc "Encrypted terminal client for OpenClaw agents"
  homepage "https://chat4000.com"
  license "GPL-3.0-or-later"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/chat4000/chat4000-cli/releases/download/v1.0.1/chat4000-1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "ed31d6c5f1a6f2c8e128f390f3caa6c839b5aef54b3539ec3ed0b785b89eee7d"
    end
    on_intel do
      url "https://github.com/chat4000/chat4000-cli/releases/download/v1.0.1/chat4000-1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "97302e17f2ec4aac9a17308a2facf80f0fd4e6ef58a12df568023d7116e464ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chat4000/chat4000-cli/releases/download/v1.0.1/chat4000-1.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89c60a40f165f6794c2af9a0ddd1ce6ea85dd4a087636b083f8ca44ba0516a3d"
    end
    on_intel do
      url "https://github.com/chat4000/chat4000-cli/releases/download/v1.0.1/chat4000-1.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8696628d7d0716a5d90a7492c684fb361e43366de822c8a27cc4d6fccd3b704b"
    end
  end

  head "https://github.com/chat4000/chat4000-cli.git", branch: "main"

  def install
    bin.install "chat4000"
  end

  test do
    assert_match "chat4000", shell_output("#{bin}/chat4000 --version")
  end
end
