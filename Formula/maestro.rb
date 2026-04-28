class Maestro < Formula
  desc "Autonomous coding agent orchestration for engineering teams"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "0.46.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_arm64.tar.gz"
      sha256 "eda592db787b80296c3ef6298e5a2c2799e46084cd6ed183e52afbc41cb0d4e4"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_amd64.tar.gz"
      sha256 "d6b18a8eb95ad489d46a706439744d8212886f45e82d5acdb5428fcd2e541668"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_arm64.tar.gz"
      sha256 "cdba908c7319951cbeda6eb1f2e084f73dcd0c40639fea4d68c981bc3f639ddf"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_amd64.tar.gz"
      sha256 "5423ad35f4c7970cd4a0d8e2baee247f5da7726188368cfd2f839aa01ce6d3e6"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
