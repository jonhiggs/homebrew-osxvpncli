class Osxvpncli < Formula
  desc "A wrapper to help you start and stop your VPN connections"
  homepage "https://github.com/jonhiggs/osxvpncli"
  url "https://github.com/jonhiggs/osxvpncli/archive/0.2.2.tar.gz"
  version "0.2.2"
  sha256 "e34720149dabf45f8cb4b29740133bd8df9744028a76c26367e1fffd52a78a4d"

  def install
    bash_completion.install Dir["bash_completion.d/osxvpncli"]
    bin.install 'osxvpncli'
  end

  test do
    system "true"
  end
end
