class MaestroAlphaPr135 < Formula
  desc "Maestro CLI (alpha PR #135)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr135"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_darwin_arm64.tar.gz"
      sha256 "38723cdba302775bffd0c8edc96c05271625c2827f0dc44b2e8722b7ca36ac24"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_darwin_amd64.tar.gz"
      sha256 "8eb9483dfebd862e6fb22b25e02dcbd79d6f356fc99c98572179e3996e7b66f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_linux_arm64.tar.gz"
      sha256 "45139b5cbde01e1cb17d8abd217a84b8170c80a7e7db701a1726433b2a98683a"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_linux_amd64.tar.gz"
      sha256 "a95a5f3b93e8816b310f3adf37a4c5cf702f26ae7dfb8555cf22ceb5c1b469e3"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
