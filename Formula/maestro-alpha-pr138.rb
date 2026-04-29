class MaestroAlphaPr138 < Formula
  desc "Maestro CLI (alpha PR #138)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr138"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_darwin_arm64.tar.gz"
      sha256 "bc46fb6fd2d6980c892405ea11f8655fbf1eb099d84a7c8c3a5a47ae72ae8534"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_darwin_amd64.tar.gz"
      sha256 "359478f31659dae0ea3ee42bb3a35d65eccaac6f3beac2f8d7ead8a8433d2715"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_linux_arm64.tar.gz"
      sha256 "7c560f3afc3d34a89698d287a1a448e5cd3c785fbb948a35e64c100ef99a144e"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_linux_amd64.tar.gz"
      sha256 "151ca943e4e6248179a800ea6d699de5de78124ca8bba246fa34f6151657246a"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
