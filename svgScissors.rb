class InkscapeRequirement < Requirement
  fatal true

  satisfy(:build_env => false) { which("inkscape") }

  def message; <<~EOS
    inkscape is required; install it by running:
      brew install caskformula/caskformula/inkscape
      brew cask install inkscape
    EOS
  end
end

class Svgscissors < Formula
  include Language::Python::Virtualenv
  desc "Automate card sheet -> TCG"
  homepage "https://github.com/TheNextGuy32/svgScissors"
  url "https://github.com/TheNextGuy32/svgScissors/archive/0.0.7.tar.gz"
  sha256 "81d014068d54739df721829c0f2ac992e07a69e442247d6e0dd95bb341750b90"
  head "https://github.com/TheNextGuy32/svgScissors.git"

  depends_on "cairo"
  depends_on "pango"
  depends_on "fontconfig"
  depends_on "freetype"
  depends_on "fribidi"
  depends_on "gdbm"
  depends_on "gettext"
  depends_on "glib"
  depends_on "graphite2"
  depends_on "harfbuzz"
  depends_on "ilmbase"
  depends_on "imagemagick"
  depends_on "jpeg"
  depends_on "libde265"
  depends_on "libheif"
  depends_on "libomp"
  depends_on "libpng"
  depends_on "librsvg"
  depends_on "libtiff"
  depends_on "libtool"
  depends_on "little-cms2"
  depends_on "lzo"
  depends_on "openexr"
  depends_on "openjpeg"
  depends_on "openssl@1.1"
  depends_on "pcre"
  depends_on "pixman"
  depends_on "python"
  depends_on "readline"
  depends_on "shared-mime-info"
  depends_on "webp"
  depends_on "x265"
  depends_on "xz"
  depends_on InkscapeRequirement

  uses_from_macos "icu4c"
  uses_from_macos "libffi"
  uses_from_macos "libxml2"
  uses_from_macos "libxslt"
  uses_from_macos "sqlite"
  uses_from_macos "zlib"
  
  resource "asyncio" do
    url "https://files.pythonhosted.org/packages/da/54/054bafaf2c0fb8473d423743e191fcdf49b2c1fd5e9af3524efbe097bafd/asyncio-3.4.3.tar.gz"
    sha256 "83360ff8bc97980e4ff25c964c7bd3923d333d177aa4f7fb736b019f26c7cb41"
  end

  resource "ensure" do
    url "https://files.pythonhosted.org/packages/05/26/1a6cb222c7c784a4ce06214513ae69126f423acd7898ff62d1787b3978f1/ensure-1.0.0.tar.gz"
    sha256 "61ef7a640914c317ab18026f05618d84004465614c1854264b3c63b2c81a64e7"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/39/2b/0a66d5436f237aff76b91e68b4d8c041d145ad0a2cdeefe2c42f76ba2857/lxml-4.5.0.tar.gz"
    sha256 "8620ce80f50d023d414183bf90cc2576c2837b88e00bea3f33ad2630133bbb60"
  end

  resource "mpmath" do
    url "https://files.pythonhosted.org/packages/ca/63/3384ebb3b51af9610086b23ea976e6d27d6d97bf140a76a365bd77a3eb32/mpmath-1.1.0.tar.gz"
    sha256 "fc17abe05fbab3382b61a123c398508183406fa132e0223874578e20946499f6"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/21/9f/b251f7f8a76dec1d6651be194dfba8fb8d7781d10ab3987190de8391d08e/six-1.14.0.tar.gz"
    sha256 "236bdbdce46e6e6a3d61a337c0f8b763ca1e8717c03b369e87a7ec7ce1319c0a"
  end

  resource "svgutils" do
    url "https://files.pythonhosted.org/packages/8c/35/21e59c17e0d435b953b0c1a8ffd914f4bf3411b52ae04030c0c4153ef929/svgutils-0.3.1.tar.gz"
    sha256 "cd52474765fd460ad2389947f77589de96142f6f0ce3f61e08ccfabeac2ff8af"
  end

  resource "Wand" do
    url "https://files.pythonhosted.org/packages/a3/ff/22a74061e56888c8813c4c86274e166f71a1305ea76dd4c75fcd14e51dd3/Wand-0.5.9.tar.gz"
    sha256 "6eaca78e53fbe329b163f0f0b28f104de98edbd69a847268cc5d6a6e392b9b28"
  end

  def install
    # Fix "ld: file not found: /usr/lib/system/libsystem_darwin.dylib" for lxml
    ENV["SDKROOT"] = MacOS.sdk_path if MacOS.version == :sierra

    venv = virtualenv_create(libexec, "python3")

    resource("Pillow").stage do
      inreplace "setup.py" do |s|
        sdkprefix = MacOS.sdk_path_if_needed ? MacOS.sdk_path : ""
        s.gsub! "openjpeg.h",
          "probably_not_a_header_called_this_eh.h"
        s.gsub! "ZLIB_ROOT = None",
          "ZLIB_ROOT = ('#{sdkprefix}/usr/lib', '#{sdkprefix}/usr/include')"
        s.gsub! "JPEG_ROOT = None",
          "JPEG_ROOT = ('#{Formula["jpeg"].opt_prefix}/lib', '#{Formula["jpeg"].opt_prefix}/include')"
        s.gsub! "FREETYPE_ROOT = None",
          "FREETYPE_ROOT = ('#{Formula["freetype"].opt_prefix}/lib', '#{Formula["freetype"].opt_prefix}/include')"
      end

      # avoid triggering "helpful" distutils code that doesn't recognize Xcode 7 .tbd stubs
      unless MacOS::CLT.installed?
        ENV.append "CFLAGS", "-I#{MacOS.sdk_path}/System/Library/Frameworks/Tk.framework/Versions/8.5/Headers"
      end
      venv.pip_install Pathname.pwd
    end

    res = resources.map(&:name).to_set - ["entrypoints", "Pillow"]

    res.each do |r|
      venv.pip_install resource(r)
    end

    venv.pip_install_and_link buildpath
  end


  test do
    system "#{bin}/cli", "--help"
  end
end