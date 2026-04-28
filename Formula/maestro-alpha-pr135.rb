class MaestroAlphaPr135 < Formula
  desc "Maestro CLI (alpha PR #135)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr135"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_darwin_arm64.tar.gz"
      sha256 "311b8dd34ca9d6c7d1c5b2ef58be1e4c2b1a282e58a1b688485885ade5f347fe"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_darwin_amd64.tar.gz"
      sha256 "59560711b1bb50bf037c40cacb289ca81b236d6493bcaa84926faf0468bbe747"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_linux_arm64.tar.gz"
      sha256 "5cfd105ed2e20dd4342cd157626e574cf7742d18434b21c0395ff2c29ea35d6c"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_linux_amd64.tar.gz"
      sha256 "a2ffdb1d05278019c293fcb2ffe43bbfeec692206e8c8687dcb0ce809091333d"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
