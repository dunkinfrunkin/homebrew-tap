class Maestro < Formula
  desc "Autonomous coding agent orchestration for engineering teams"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_arm64.tar.gz"
        sha256 "3fa01e9b4382eff6583ba5caabd3fd7d49f39e68938d957b5329a563e75267a3"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_amd64.tar.gz"
        sha256 "8526c91da582e5b203b98c4fb4a6ec92c27a2806bb3c5efe9419155a683e8bf2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_arm64.tar.gz"
        sha256 "26d52998f844ed0ba5df5aaa1d3ef809b6b44a60f43358c535ea0c0478fba028"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_amd64.tar.gz"
        sha256 "8f01eed5abd9c925ab64feb71015c4cec01011844d6bfb095ab9e679a2e63d71"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
