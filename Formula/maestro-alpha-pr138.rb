class MaestroAlphaPr138 < Formula
  desc "Maestro CLI (alpha PR #138)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr138"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_darwin_arm64.tar.gz"
      sha256 "519d245c97c20e4ddf45d5f9d63e1fb79ef65918b882fd1e73d7b8f768dd1066"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_darwin_amd64.tar.gz"
      sha256 "83682cc818a2f996cb5a662b7cc43cd66d6fbadf24c974e5e5eb981baa0c2ad7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_linux_arm64.tar.gz"
      sha256 "a709c41a610b9a3f49aaea81f21689d6ad6c398ab5def07751247f2c159bfb59"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_linux_amd64.tar.gz"
      sha256 "3565f1d18833b45a2b9ea47ff83d8a7c96b22c877746ea90fd892ae6b9b1e3fa"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
