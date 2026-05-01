class MaestroAlphaPr140 < Formula
  desc "Maestro CLI (alpha PR #140)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr140"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr140/maestro_darwin_arm64.tar.gz"
      sha256 "eeaed4c0e907a52ac07fdb11651da0f7c886f64d7cc1855974b6da63c2684a87"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr140/maestro_darwin_amd64.tar.gz"
      sha256 "fe2ad6b5b37b37cc8d5b21e354a8739bf92625f0dedaa9ae54e0a4d27f2581db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr140/maestro_linux_arm64.tar.gz"
      sha256 "c60d90cb22e7d91afde6eaf56ddac405552cc5ed8f1ad21294dcb78ffb85645e"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr140/maestro_linux_amd64.tar.gz"
      sha256 "e71bdf0aab718a44f5f7bc40a72f08c590f5ea7f6252f8ac6595542beb33a880"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
