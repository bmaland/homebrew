require 'formula'

class Libcaca <Formula
  url 'http://caca.zoy.org/files/libcaca/libcaca-0.99.beta17.tar.gz'
  homepage 'http://caca.zoy.org/wiki/libcaca'
  md5 '790d6e26b7950e15909fdbeb23a7ea87'

  depends_on 'gettext'

  def install
    # Some people can't compile when Java is enabled. See:
    # http://github.com/mxcl/homebrew/issues/issue/2049
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--mandir=#{man}",
                          "--disable-imlib2",
                          "--disable-doc",
                          "--disable-slang",
                          "--disable-java"
    system "make install"
  end
end
