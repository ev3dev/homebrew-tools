class Ev3duder < Formula
  desc "The (unofficial) LEGO® EV3 Downloader/UploaDER"
  homepage "https://github.com/c4ev3/ev3duder"
  head "https://github.com/c4ev3/ev3duder.git"

  def install
    system "make"
    bin.install "ev3duder"
  end

  test do
    system "false"
  end
end
