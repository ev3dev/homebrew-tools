class Grx < Formula
  desc "GRX3 Graphics Library"
  homepage "https://github.com/ev3dev/grx/"
  url "https://github.com/ev3dev/grx.git",
    :branch => "ev3dev-stretch",
    :revision => "2e1a89b01e2253c1a6183b7b8a93946909a54915"
  version "3.0.0"

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
