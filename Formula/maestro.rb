class Maestro < Formula
  desc "Autonomous coding agent orchestration for engineering teams"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "0.35.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_arm64.tar.gz"
        sha256 "51ed929d4a0814ccb7e68b8734a441fbd616cd314935a42e3e4417e1d5a612cf"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_amd64.tar.gz"
        sha256 "e9a574bd9af589a09c9483921c79be472ea1ff40bd76ef3f599eed2958c8f6bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_arm64.tar.gz"
        sha256 "e565d2bd778192f2dec635416aa6d0b0859a68f39d223b270bcd6e6854ea5bc4"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_amd64.tar.gz"
        sha256 "df979b40a7255e6b05b29c4e4a6ffe522de2aa49d30fd856b37b9b3152ceefbf"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
