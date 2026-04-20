class Maestro < Formula
  desc "Autonomous coding agent orchestration for engineering teams"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_arm64.tar.gz"
        sha256 "0884f96e89e51f79518106812ffe743681a505fcc1781f3ab7924a275b61cfe3"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_amd64.tar.gz"
        sha256 "b4623f37c7abd0c59abd53ffc6bad941eb1e2bf253ecf949fed85ef684874dba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_arm64.tar.gz"
        sha256 "39e34c353e467ae6bbd85080cd1ed7e9b65cb4fe53082577baf4f35bc1881f37"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_amd64.tar.gz"
        sha256 "211401147cd5a642385179b6a5f4305c2f8baaf3eec07fb2ef81c9d3775a0cfd"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
