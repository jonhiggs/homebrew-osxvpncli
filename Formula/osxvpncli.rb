class Osxvpncli < Formula
  desc "A wrapper to help you start and stop your VPN connections"
  homepage "https://github.com/jonhiggs/osxvpncli"
  url "https://github.com/jonhiggs/osxvpncli/archive/0.2.1.tar.gz"
  version "0.2.1"
  sha256 "4ec7fe32565866046613dbe3cd6359a5bc34cb19f97e775d3bf839d5fe9568cf"

  def install
    system "mv vpn osxvpncli"
    system "mv bash_completion.d/vpn bash_completion.d/osxvpncli"
    bash_completion.install Dir["bash_completion.d/osxvpncli"]
    bin.install 'osxvpncli'
  end

  test do
    system "true"
  end
end
