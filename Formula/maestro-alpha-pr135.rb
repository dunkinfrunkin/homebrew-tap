class MaestroAlphaPr135 < Formula
  desc "Maestro CLI (alpha PR #135)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr135"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_darwin_arm64.tar.gz"
      sha256 "09e7150193f10eb15c102c089d6cb218df1b532c0f64972efa3facd0eea9bd37"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_darwin_amd64.tar.gz"
      sha256 "4dd0b36353ac2fdf2b8927e8c97873b9720127a42120c2b546b697e85b0c9d30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_linux_arm64.tar.gz"
      sha256 "c8f8bb9acb317db57c75763e56166cc9fe2503fcfbf03a56a06945725365058e"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_linux_amd64.tar.gz"
      sha256 "4b25406fbf7fe08849cc23d712416577f720459c9db183fad59113650750d364"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
