class Maestro < Formula
  desc "Autonomous coding agent orchestration for engineering teams"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_arm64.tar.gz"
      sha256 "b5133002bb164e485373db57bea8ddf3e34221911c6fd22f14e7d74c3be435b5"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_amd64.tar.gz"
      sha256 "9ecf40e4b3ec3c301f5b159bafca7fd3c5cf284e6ee7ecfad9b8e4b79b61d48b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_arm64.tar.gz"
      sha256 "e70aad885f8f96e244e22a0eaf2aabc69bd0526a5c677cf23bc97fbbf47b4eca"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_amd64.tar.gz"
      sha256 "53772fc083061171d6984a2f5c81b72e2902eaac23e2b10ecd3bbca338ae7169"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
