class Grx < Formula
  desc "GRX3 Graphics Library"
  homepage "https://github.com/ev3dev/grx/"
  url "https://github.com/ev3dev/grx.git",
    :tag => "homebrew/3.1.2"

  bottle do
    root_url "https://github.com/ev3dev/grx/releases/download/homebrew%2F3.1.2"
    sha256 "fa9c6abf5ca23bbdfaa2467381357c9d677710b4f6649c7d0f4a0b88985c753d" => :high_sierra
  end

  depends_on "cmake" => :build
  depends_on "pkg-config"
  depends_on "jpeg"
  depends_on "libpng"
  depends_on "libxkbcommon" => :build
  depends_on "gtk+3"
  depends_on "gobject-introspection"
  depends_on "vala" => :build
  depends_on "python3" => :build

  def install
    cd "cmake" do
      # work around weird bug that deltes all files in cmake/ subdirectory
      system "git", "reset", "--hard"
    end
    mkdir "build" do
      system "cmake", "..", "-DGRX_ENABLE_DOC=No", *std_cmake_args
      system "make", "install"
    end
  end

  test do
    system "false"
  end
end
