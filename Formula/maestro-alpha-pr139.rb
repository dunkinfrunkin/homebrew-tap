class MaestroAlphaPr139 < Formula
  desc "Maestro CLI (alpha PR #139)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr139"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_darwin_arm64.tar.gz"
      sha256 "8ccc712c89f100c553abff7e8fafc56079be7ed5357f31610522f424f7a01b1c"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_darwin_amd64.tar.gz"
      sha256 "68d4c6175f45120f2ee51a7e189e822eb6a7886712899c711af67d7581613393"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_linux_arm64.tar.gz"
      sha256 "19e5e1915238c5a7eb6840bae98268f8635f17721d1498c0a1b99cc69e080f30"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_linux_amd64.tar.gz"
      sha256 "ba41c918077f94a6e4ff00afd6819d6bdb5680c06bf7bce5bbe29e71e432d1fe"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
