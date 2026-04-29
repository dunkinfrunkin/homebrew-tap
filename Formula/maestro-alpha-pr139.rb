class MaestroAlphaPr139 < Formula
  desc "Maestro CLI (alpha PR #139)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr139"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_darwin_arm64.tar.gz"
      sha256 "e39480bd3ed85ba6e3e639c6aee8ca42d241164077f5a1d897e24f02618dffa7"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_darwin_amd64.tar.gz"
      sha256 "e37a21b4619d8456e6670b96a7d4863ebce134a291c42a891273ad65d67275f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_linux_arm64.tar.gz"
      sha256 "5d14abd759a807f81e171e8a4d3861e6b0f38131d696017320f93a1671c16ae5"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_linux_amd64.tar.gz"
      sha256 "60afc4eea04dbabdf5827762cadb4f91f888e824ba36ecf004f2b796d3e4284a"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
