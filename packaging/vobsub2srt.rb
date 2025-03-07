# Homebrew Formula for VobSub2SRT
# Usage: brew install https://github.com/ruediger/VobSub2SRT/raw/master/vobsub2srt.rb

require 'formula'

class Vobsub2srt < Formula
  head 'https://github.com/dannown/VobSub2SRT.git', :using => :git
  homepage 'https://github.com/dannown/VobSub2SRT'
  sha254 fffffff

  depends_on 'cmake'
  depends_on 'tesseract'
  depends_on 'ffmpeg'

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end
end
