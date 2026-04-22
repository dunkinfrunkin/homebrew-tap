class Maestro < Formula
  desc "Autonomous coding agent orchestration for engineering teams"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "0.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_arm64.tar.gz"
        sha256 "013dbc6459b40cc08650fe08d5eca558768724b0830f1a7aa602b8f37efe02e5"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_amd64.tar.gz"
        sha256 "e61a26bb309fa6130338a15c0d2eeb0756dc6d17a7acb4a05657b1a789a006f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_arm64.tar.gz"
        sha256 "e69dd68da55c70af0f77b88e4f36f5ccd9d55c83c472bc6bf8f5f5cdfee3b399"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_amd64.tar.gz"
        sha256 "de77f87c72b000b23a9e8ab0fdbf89effc7a5e09772ce9c45025580e42a8c608"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
