class MaestroAlphaPr138 < Formula
  desc "Maestro CLI (alpha PR #138)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr138"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_darwin_arm64.tar.gz"
      sha256 "fb8d5724ff3771cbf6bfd0d472a5b39dbe263b5a648ec73587c1a60a89f43fc3"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_darwin_amd64.tar.gz"
      sha256 "058528e0c509d1b37241ec4f99b83645b605b98edf019ee7745a1b7ed70e920d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_linux_arm64.tar.gz"
      sha256 "0af3469187e1849fb0c8fa04701bc6bfbb42c8dcd89015d1b88b945bafcafb9d"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_linux_amd64.tar.gz"
      sha256 "77400708e14ab31c7943c4252d7093bfd4c4db44897730f8a9c1fac0261e7e2d"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
