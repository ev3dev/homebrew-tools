class Grx < Formula
  desc "GRX3 Graphics Library"
  homepage "https://github.com/ev3dev/grx/"
  url "https://github.com/ev3dev/grx.git",
    :tag => "homebrew/3.0.0"

  bottle do
    root_url "https://github.com/ev3dev/grx/releases/download/homebrew%2F3.0.0"
    sha256 "33d4a6faa897883692daaf865ffe3cfe71dd123cef2f4fe542c510218871e206" => :sierra
  end

  depends_on "cmake" => :build
  depends_on "pkg-config" => :run
  depends_on "jpeg"
  depends_on "libpng"
  depends_on "libxkbcommon" => :build
  depends_on "gtk+3"
  depends_on "gobject-introspection"
  depends_on "vala" => :build
  depends_on "python3" => :build

  def install
    system "cmake", ".", "-DGRX_ENABLE_DOC=No", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
