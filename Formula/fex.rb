class Fex < Formula
  desc "Universal interactive package search TUI"
  homepage "https://github.com/krisfur/fex"
  url "https://github.com/krisfur/fex/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "6484edee697392a645ab9f9ee73e26765c0f759ac07d97cfb03a16a1fc07352b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fex -V")
  end
end
