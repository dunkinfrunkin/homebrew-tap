class MaestroAlphaPr138 < Formula
  desc "Maestro CLI (alpha PR #138)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr138"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_darwin_arm64.tar.gz"
      sha256 "2bde48d33c87184fb377a0a71a3a51aba8e06f4ca992e87c8a7602f1d3f30af9"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_darwin_amd64.tar.gz"
      sha256 "4da7977b61b0892febdf662502a5cdf50d0eb3ebba1d3c205fa179ce176e28e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_linux_arm64.tar.gz"
      sha256 "6389eebee6e26dd578f6e7438a2b1f42431605afe53148f5eb7458163971887b"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr138/maestro_linux_amd64.tar.gz"
      sha256 "ab09085636f64fdbef1f424232d6bef685d4d536f936b8def243f89999ba1222"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
