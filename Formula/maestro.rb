class Maestro < Formula
  desc "Autonomous coding agent orchestration for engineering teams"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "0.47.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_arm64.tar.gz"
      sha256 "20b40b288d739621d106f43d5537a1a6e8ff43ca58c7f6d0fbe6d86b2bc873af"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_amd64.tar.gz"
      sha256 "c30fe6cde1670d8a4ba005047ac0e71787f0da5a25b789845e41a63c79a1a90b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_arm64.tar.gz"
      sha256 "a6395b3c49f45640a88bba28011b8d541ed1e5596ea5b4b70f77419fcf1a9ebf"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_amd64.tar.gz"
      sha256 "73842c10fb9c079245db6070513a01c1dc0f8b4c71ef1695edc833af99028efd"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
