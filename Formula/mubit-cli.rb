class MubitCli < Formula
  desc "Command-line client for the Mubit console"
  homepage "https://github.com/mubit-ai/mubit-cli"

  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/mubit-cli/releases/download/v0.1.1/mubit-cli-0.1.1-macos-arm64.tar.gz"
      sha256 "dbc072468b0232bfc1ac299ddf677e6bfeb2cd959b58ab1864cb10b7dd3b78aa"
    end
    on_intel do
      url "https://github.com/mubit-ai/mubit-cli/releases/download/v0.1.1/mubit-cli-0.1.1-macos-x86_64.tar.gz"
      sha256 "97411d698eb9726c434168cba359b85d3a74242d773f44077fb3170d6391964c"
    end
  end

  on_linux do
    # The credential store reaches the secret service over D-Bus, so
    # the binary loads libdbus at run time.
    depends_on "dbus"

    on_arm do
      url "https://github.com/mubit-ai/mubit-cli/releases/download/v0.1.1/mubit-cli-0.1.1-linux-arm64.tar.gz"
      sha256 "0fdae780ccf3f23af3142cb6bd104e82240947b7e7117f13f7bfc4fd1ba9a702"
    end
    on_intel do
      url "https://github.com/mubit-ai/mubit-cli/releases/download/v0.1.1/mubit-cli-0.1.1-linux-x86_64.tar.gz"
      sha256 "cbd7f1b9beb62bcf66be16ecad96efd537a452ba85d2de0711850061b8b0650b"
    end
  end

  def install
    # Each archive holds one top-level directory and Homebrew unpacks
    # into it, so these paths are relative to that directory.
    bin.install "mubit-cli"
    doc.install "README.md"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/mubit-cli --version")
  end
end
