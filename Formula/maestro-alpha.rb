class MaestroAlpha < Formula
  desc "Maestro CLI (alpha/PR build)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr135"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_darwin_arm64.tar.gz"
      sha256 "950c03e9531225b125c86867ffe94841539dcbc47666c9b039cb0f50605c4656"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_darwin_amd64.tar.gz"
      sha256 "7485f3f0cb00a042df1a2e521269c075f1ad6d96689f01506e04f545d78fd814"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_linux_arm64.tar.gz"
      sha256 "af378210fdc8e80ca65b47eaa3b9686dd86515ed9f30f8019c22514164009cd4"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_linux_amd64.tar.gz"
      sha256 "3a8758249955fd6eb978dcc14ff62abd01c3d8a6d475cf875fe8f1fc95367120"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
