class Kit < Formula
  desc "Share AI coding skills, hooks, and config across tools and teams"
  homepage "https://github.com/dunkinfrunkin/kit"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/kit/releases/download/v#{version}/kit_darwin_arm64.tar.gz"
      sha256 "6a18b9d5395af9f9a9d297ef65d5d7e7413154d3c6ddd72e1af253e2a7bd635c"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/kit/releases/download/v#{version}/kit_darwin_amd64.tar.gz"
      sha256 "a090596f60d426a9dc10469648727def2f149ff70bffd0a5f1fc4f3fb5d04e45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/kit/releases/download/v#{version}/kit_linux_arm64.tar.gz"
      sha256 "d7e8283acc89a140bf627dcc9dd85f4507e3529691c679720abb2966f3dfff3c"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/kit/releases/download/v#{version}/kit_linux_amd64.tar.gz"
      sha256 "79da69fed77a431177c2624d28b5406b58e0eb83bf41ede5bf803f7c0e3b9ab9"
    end
  end

  def install
    bin.install "kit"
  end

  test do
    assert_match "kit", shell_output("#{bin}/kit --help")
  end
end
