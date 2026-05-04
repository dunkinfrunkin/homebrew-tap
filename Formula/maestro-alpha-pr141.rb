class MaestroAlphaPr141 < Formula
  desc "Maestro CLI (alpha PR #141)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr141"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr141/maestro_darwin_arm64.tar.gz"
      sha256 "baa92b4dbc336899599e8cce8267b273fc977b43ea0bca51cb02a631a656fe9c"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr141/maestro_darwin_amd64.tar.gz"
      sha256 "f1eac7ab68f4016853f7c4735caf3a62dc143fa8235e72c655466b81f7e8e35d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr141/maestro_linux_arm64.tar.gz"
      sha256 "3a90fcbe77924093c5aba1766e39bc5da39b6bf9bc5dc79c1918837e8701e923"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr141/maestro_linux_amd64.tar.gz"
      sha256 "ef55fe0d727f97ce122e54f68f35c06198358962969ae6c34c4c050fdf28b18a"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
