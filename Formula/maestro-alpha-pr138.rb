class MaestroAlphaPr138 < Formula
  desc "Maestro CLI (alpha PR #138)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr138"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_darwin_arm64.tar.gz"
      sha256 "20decfa2daced50da2a81627ecca60dd85b3257bfac7503dd07fd473d8d4a1d3"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_darwin_amd64.tar.gz"
      sha256 "2b045815932f43be45ccbba47c82556dd741d44c5f273725dcc8042b52d39cf8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_linux_arm64.tar.gz"
      sha256 "43e7bd8414a84ecbb330e6ba907535c9d32be829431c491a59a1dd9ecbfc0499"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_linux_amd64.tar.gz"
      sha256 "d6c6946b8f7e2946af9880e98d008de25e313e1975ee7b0c98f5c5fa29939608"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
