class Chat4000 < Formula
  desc "Encrypted terminal client for OpenClaw agents"
  homepage "https://chat4000.com"
  license "GPL-3.0-or-later"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/chat4000/chat4000-cli/releases/download/v1.0.0/chat4000-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "75fae870778fab266fa6d1fb0d6ac29872741456223b13ef5e7d6461b199a682"
    end
    on_intel do
      url "https://github.com/chat4000/chat4000-cli/releases/download/v1.0.0/chat4000-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "4e8afe1538bef322871efba614a3114c059a6828c7696c5abae65f4ecbe9ddfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chat4000/chat4000-cli/releases/download/v1.0.0/chat4000-1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5585e4b343a20ba7cc8a5be14ae46f7bba864b76dc576ffe79888b22fe19d5ff"
    end
    on_intel do
      url "https://github.com/chat4000/chat4000-cli/releases/download/v1.0.0/chat4000-1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a89fd718c06a0299fdfa08941b0a5b18d0e125eb8f8196154b5e09f35cc82c3c"
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
