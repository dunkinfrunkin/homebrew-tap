# typed: false
# frozen_string_literal: true

class Mdcat < Formula
  desc "Terminal pager for Markdown with syntax highlighting and search"
  homepage "https://github.com/dunkinfrunkin/mdcat"
  url "https://registry.npmjs.org/@dunkinfrunkin/mdcat/-/mdcat-0.1.4.tgz"
  sha256 "ece6610e5e19797896d606d1e12c9e0cce6b46e205c75e9b2de15bd865179934"
  license "MIT"
  version "0.1.4"

  depends_on "node"

  def install
    system "npm", "install", "--production", "--ignore-scripts"
    libexec.install Dir["*"]
    (bin/"mdcat").write <<~SH
      #!/bin/sh
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/src/cli.js" "$@"
    SH
    chmod 0755, bin/"mdcat"
  end

  test do
    (testpath/"test.md").write "# Hello\n\nWorld"
    assert_match "Hello", shell_output("#{bin}/mdcat #{testpath}/test.md 2>&1 || true")
  end
end
