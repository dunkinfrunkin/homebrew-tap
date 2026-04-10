class Maestro < Formula
  desc "Autonomous coding agent orchestration for engineering teams"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "0.34.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_arm64.tar.gz"
        sha256 "5bb25e6a1ec833ae0764bf4783a9807e032d8af4399e32c21359a4046edafed0"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_amd64.tar.gz"
        sha256 "22bb23a3130121c311fb54f4d370b1363684c442b545084391eae30721d7de36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_arm64.tar.gz"
        sha256 "3358f9fe97ef66c868a570d3450dfb8ebf5f86213513e0cb9c3fc07808c3f18b"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_amd64.tar.gz"
        sha256 "9b38db368211f921eab64a83af36548dc7197c905a3d1a2a793cfcb98896bf32"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
