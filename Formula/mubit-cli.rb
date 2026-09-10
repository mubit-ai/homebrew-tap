class MubitCli < Formula
  desc "Command-line client for the Mubit console"
  homepage "https://github.com/mubit-ai/mubit-cli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/mubit-cli/releases/download/v0.1.0/mubit-cli-0.1.0-macos-arm64.tar.gz"
      sha256 "29436cc4a08a00699ca27bc63b8e9284ec50b7d8c6ff0accddc453c676c213c2"
    end
    on_intel do
      url "https://github.com/mubit-ai/mubit-cli/releases/download/v0.1.0/mubit-cli-0.1.0-macos-x86_64.tar.gz"
      sha256 "5c02a3555d87deed1ff0809f19fea37a60b07ba7eaabad2c132aa0c9b3ff7b90"
    end
  end

  on_linux do
    # The credential store reaches the secret service over D-Bus, so
    # the binary loads libdbus at run time.
    depends_on "dbus"

    on_arm do
      url "https://github.com/mubit-ai/mubit-cli/releases/download/v0.1.0/mubit-cli-0.1.0-linux-arm64.tar.gz"
      sha256 "f51ca33831b7aa06194b3632f70add5a945c7bca59124fb1e143a12d3b013100"
    end
    on_intel do
      url "https://github.com/mubit-ai/mubit-cli/releases/download/v0.1.0/mubit-cli-0.1.0-linux-x86_64.tar.gz"
      sha256 "5c38ab6a1240119b2df9859a340f0a4f79f2d728d700564daef6a4f624cd1222"
    end
  end

  def install
    # Each archive holds one top-level directory and Homebrew unpacks
    # into it, so these paths are relative to that directory.
    bin.install "mubit-cli"
    doc.install "README.md"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/mubit-cli --version")
  end
end
