# Formula to build pilot-link for HomeBrew
#
# https://github.com/desrod/pilot-link
#
# Written by Ewen McNeill <ewen@naos.co.nz>, 2026-09-21
# Updated by Ewen McNeill <ewen@naos.co.nz>, 2026-09-21
#
class PilotLink < Formula
  desc "Library for interacting with Palm Pilot over serial"
  homepage "https://github.com/desrod/pilot-link"
  url "https://github.com/desrod/pilot-link/releases/download/v0.15.0/pilot-link-0.15.0.tar.gz"
  sha256 "7b3140d6c02cfe5865129fe0287b070dfcf9d2509e30b3e0e1b982e2383cc2b3"
  license "GPL-2.0-only"

  option "with-conduits", "Build command line conduit tools too"

  depends_on "autoconf"    => :build
  depends_on "automake"    => :build
  depends_on "libtool"     => :build
  depends_on "pkgconf"     => :build
  depends_on "libusb"
  depends_on "libpng"
  depends_on "readline"
  depends_on "popt"
  depends_on "docbook-xsl" => :build
# depends_on "xsltproc"    => :build      # Formula does not exist
  depends_on "swig"        => :build

  def install
    if build.with? "conduits"
        additional_args = [ "--enable-conduits"      ]
    else
        additional_args = [ ]
    end

    system "./configure", "--prefix=#{prefix}",
                          *additional_args
    system "make"
    system "make", "install"
  end

  test do
    # Place holder non-test (since without conduits it is difficult to
    # test anything
    system "true"
  end
end
