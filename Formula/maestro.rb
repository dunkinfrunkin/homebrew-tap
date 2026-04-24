class Maestro < Formula
  desc "Autonomous coding agent orchestration for engineering teams"
  homepage "https://github.com/dunkinfrunkin/maestro"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_arm64.tar.gz"
        sha256 "8441ffe2fd9e3307d9d73606b6f9caebe218c85a7fd7a2de406a081dbe9870e0"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_amd64.tar.gz"
        sha256 "a55dc9e245a4a3943d3e13f6be2a2dbc91845be1672721c592893c17092f4709"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_arm64.tar.gz"
        sha256 "0af1ad9d3ee2d69e67bccdc52cba74265bb45d53ec0ad36e025609236b75ab12"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_amd64.tar.gz"
        sha256 "560f7914ff4c61f9d1da09ccdb5c95f5c4f6fe871303063b9bed86cd9fe61e95"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
