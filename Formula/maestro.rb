class Maestro < Formula
  desc "Autonomous coding agent orchestration for engineering teams"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "0.48.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_arm64.tar.gz"
      sha256 "05ea5d025321088aed3c7ad112015f056ea6a1e4331ef6486314bdb10e1ecb39"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_amd64.tar.gz"
      sha256 "02bce142ec77a77e5ab8d16cd1ce5e29a8f1045f5381531990a9f0266163f9fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_arm64.tar.gz"
      sha256 "b7838b5a4e1c7c8d3e84e30d6da717a0e1a030cf51d0a8540ad9ac6b3b263d12"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_amd64.tar.gz"
      sha256 "58381520a489c30348b9d0a2868f96193c540ef658312713a4263f3d3f78144b"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
