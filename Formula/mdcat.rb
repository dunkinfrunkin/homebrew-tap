class Mdcat < Formula
  desc "View markdown files beautifully in your terminal"
  homepage "https://github.com/frankchan/mdcat"
  url "https://registry.npmjs.org/mdcat/-/mdcat-0.1.0.tgz"
  sha256 "" # fill in after: curl -s https://registry.npmjs.org/mdcat/0.1.0 | jq -r '.dist.shasum'
  version "0.1.0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    (testpath/"test.md").write("# Hello\n\nworld\n")
    assert_match "Hello", shell_output("#{bin}/mdcat test.md")
  end
end
