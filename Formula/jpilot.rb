# Formula to build J-Pilot for HomeBrew
#
# https://www.jpilot.org/
# https://github.com/juddmon/jpilot
#
# Written by Ewen McNeill <ewen@naos.co.nz>, 2026-09-21
# Updated by Ewen McNeill <ewen@naos.co.nz>, 2026-09-21
#
class Jpilot < Formula
  desc "Desktop app for Palm Pilot data access and interaction"
  homepage "https://www.jpilot.org/"
  url "https://github.com/juddmon/jpilot/releases/download/v2_1_0/jpilot-2.1.0.tar.gz"
  sha256 "f2a46f84391e7f4440a774382f5808ba9de6285a57d1afa5888d190ab39afe7e"
  license "GPL-2.0-only"

  depends_on "autoconf"    => :build
  depends_on "automake"    => :build
  depends_on "intltool"    => :build
  depends_on "libtool"     => :build
  depends_on "pkgconf"     => :build
  depends_on "popt"
  depends_on "gtk+3"
  depends_on "openssl@3"   # For the password database access
  depends_on "pilot-link"  # For pilot database / serial access libraries

  def install
    # Regenerate all the automake/autoconf files
    system "./autogen.sh"  

    system "./configure", "--prefix=#{prefix}",
                          "--with-openssl"
    system "make"
    system "make", "install"
  end

  test do
    # Place holder non-test, since this is a GUI application
    system "true"
  end
end
