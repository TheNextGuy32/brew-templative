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

class Templative < Formula
  include Language::Python::Virtualenv
  desc "Automate card sheet -> TCG"
  homepage "https://github.com/TheNextGuy32/templative"
  url "https://github.com/TheNextGuy32/templative/archive/0.3.1.tar.gz"
  sha256 "8f1477825516ef79276103f4df10836030d65a05eee7721820683fcfe4573f99"
  head "https://github.com/TheNextGuy32/templative.git"

  depends_on InkscapeRequirement
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
  depends_on "svgScissors"
  

  uses_from_macos "icu4c"
  uses_from_macos "libffi"
  uses_from_macos "libxml2"
  uses_from_macos "libxslt"
  uses_from_macos "sqlite"
  uses_from_macos "zlib"
  
  resource "aiofile" do
    url "https://files.pythonhosted.org/packages/71/7c/d6df3b2c8fb380ef7f678c366dc4485dfeb389967d373b1dc5d53bd1dcf0/aiofile-1.5.2.tar.gz"
    sha256 "229078abbaab87adfcaad0fa7766b9b8251d42d0242deac6166da433b027ef1f"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/00/94/f9fa18e8d7124d7850a5715a0b9c0584f7b9375d331d35e157cee50f27cc/aiohttp-3.6.2.tar.gz"
    sha256 "259ab809ff0727d0e834ac5e8a283dc5e3e0ecc30c4d80b3cd17a4139ce1f326"
  end

  resource "async-timeout" do
    url "https://files.pythonhosted.org/packages/a1/78/aae1545aba6e87e23ecab8d212b58bb70e72164b67eb090b81bb17ad38e3/async-timeout-3.0.1.tar.gz"
    sha256 "0c3c816a028d47f659d6ff5c745cb2acf1f966da1fe5c19c77a70282b25f4c5f"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/98/c3/2c227e66b5e896e15ccdae2e00bbc69aa46e9a8ce8869cc5fa96310bf612/attrs-19.3.0.tar.gz"
    sha256 "f7b7ce16570fe9965acd6d30101a28f62fb4a7f9e926b3bbc9b61f8b04247e72"
  end

  resource "cairocffi" do
    url "https://files.pythonhosted.org/packages/f7/99/b3a2c6393563ccbe081ffcceb359ec27a6227792c5169604c1bd8128031a/cairocffi-1.1.0.tar.gz"
    sha256 "f1c0c5878f74ac9ccb5d48b2601fcc75390c881ce476e79f4cfedd288b1b05db"
  end

  resource "CairoSVG" do
    url "https://files.pythonhosted.org/packages/ba/46/24514db9c111f4d0b18bc050ff7204065ae9c89db6badcf283661528b329/CairoSVG-2.4.2.tar.gz"
    sha256 "4e668f96653326780036ebb0a9ff2bb59a8443d7bcfc51a14aab77b57a8e67ad"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/41/bf/9d214a5af07debc6acf7f3f257265618f1db242a3f8e49a9b516f24523a6/certifi-2019.11.28.tar.gz"
    sha256 "25b64c7da4cd7479594d035c08c2d809eb4aab3a26e5a990ea98cc450c320f1f"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/05/54/3324b0c46340c31b909fcec598696aaec7ddc8c18a63f2db352562d3354c/cffi-1.14.0.tar.gz"
    sha256 "2d384f4a127a15ba701207f7639d94106693b6cd64173d6c8988e2c25f3ac2b6"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/4e/ab/5d6bc3b697154018ef196f5b17d958fac3854e2efbc39ea07a284d4a6a9b/click-7.1.1.tar.gz"
    sha256 "8a18b4ea89d8820c5d0c7da8a64b2c324b4dabb695804dbfea19b9be9d88c0cc"
  end

  resource "cssselect2" do
    url "https://files.pythonhosted.org/packages/03/37/0e28364d4c2bce998171199ab59650b3174c077ef2c8b6d4ff57aa47676a/cssselect2-0.3.0.tar.gz"
    sha256 "5c2716f06b5de93f701d5755a9666f2ee22cbcd8b4da8adddfc30095ffea3abc"
  end

  resource "defusedxml" do
    url "https://files.pythonhosted.org/packages/a4/5f/f8aa58ca0cf01cbcee728abc9d88bfeb74e95e6cb4334cfd5bed5673ea77/defusedxml-0.6.0.tar.gz"
    sha256 "f684034d135af4c6cbb949b8a4d2ed61634515257a67299e5f940fbaa34377f5"
  end

  resource "docopt" do
    url "https://files.pythonhosted.org/packages/a2/55/8f8cab2afd404cf578136ef2cc5dfb50baa1761b68c9da1fb1e4eed343c9/docopt-0.6.2.tar.gz"
    sha256 "49b3a825280bd66b3aa83585ef59c4a8c82f2c8a522dbe754a8bc8d08c85c491"
  end

  resource "ensure" do
    url "https://files.pythonhosted.org/packages/05/26/1a6cb222c7c784a4ce06214513ae69126f423acd7898ff62d1787b3978f1/ensure-1.0.0.tar.gz"
    sha256 "61ef7a640914c317ab18026f05618d84004465614c1854264b3c63b2c81a64e7"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/34/5a/abaa557d20b210117d8c3e6b0b817ce9b329b2e81f87612e60102a924323/h11-0.9.0.tar.gz"
    sha256 "33d4bca7be0fa039f4e84d50ab00531047e53d6ee8ffbc83501ea602c169cae1"
  end

  resource "gameCrafterClient" do
    url "https://files.pythonhosted.org/packages/9e/ae/da1efb4a798ad41276842727d8876d25b34f4d9f4c52a74cae207deb8f33/gameCrafterClient-1.0.4.tar.gz"
    sha256 "94f56bf30056911e9596d5667a1ca054307ecb1a8de27d4f1454e09a6f57b84a"
  end

  resource "h2" do
    url "https://files.pythonhosted.org/packages/08/0a/033df0fc05fe94f72517ccd393dd9ff99b1773fd198307638e6d3568a518/h2-3.2.0.tar.gz"
    sha256 "875f41ebd6f2c44781259005b157faed1a5031df3ae5aa7bcb4628a6c0782f14"
  end

  resource "hpack" do
    url "https://files.pythonhosted.org/packages/44/f1/b4440e46e265a29c0cb7b09b6daec6edf93c79eae713cfed93fbbf8716c5/hpack-3.0.0.tar.gz"
    sha256 "8eec9c1f4bfae3408a3f30500261f7e6a65912dc138526ea054f9ad98892e9d2"
  end

  resource "html5lib" do
    url "https://files.pythonhosted.org/packages/85/3e/cf449cf1b5004e87510b9368e7a5f1acd8831c2d6691edd3c62a0823f98f/html5lib-1.0.1.tar.gz"
    sha256 "66cb0dcfdbbc4f9c3ba1a63fdb511ffdbd4f513b2b6d81b80cd26ce6b3fb3736"
  end

  resource "http3" do
    url "https://files.pythonhosted.org/packages/ae/47/7d25c71f5dab11f7c2a70766baf76b8f079706f66d14d047cca81d167c48/http3-0.6.7.tar.gz"
    sha256 "dbf9beedc58d8bbcf6e681a9d63d9e7cd8da346e1ffb512e02e9bf097d91f0bf"
  end

  resource "hyperframe" do
    url "https://files.pythonhosted.org/packages/e6/7f/9a4834af1010dc1d570d5f394dfd9323a7d7ada7d25586bd299fc4cb0356/hyperframe-5.2.0.tar.gz"
    sha256 "a9f5c17f2cc3c719b917c4f33ed1c61bd1f8dfac4b1bd23b7c80b3400971b41f"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/cb/19/57503b5de719ee45e83472f339f617b0c01ad75cba44aba1e4c97c2b0abd/idna-2.9.tar.gz"
    sha256 "7588d1c14ae4c77d74036e8c22ff447b26d0fde8f007354fd48a7814db15b7cb"
  end

  resource "Pillow" do
    url "https://files.pythonhosted.org/packages/81/1a/6b2971adc1bca55b9a53ed1efa372acff7e8b9913982a396f3fa046efaf8/Pillow-6.0.0.tar.gz#sha256=809c0a2ce9032cbcd7b5313f71af4bdc5c8c771cb86eb7559afd954cab82ebb5"
    sha256 "809c0a2ce9032cbcd7b5313f71af4bdc5c8c771cb86eb7559afd954cab82ebb5"
  end

  resource "filetype" do
    url "https://files.pythonhosted.org/packages/e8/53/298887541ae479f8467d4d23e028c6d15f9811da25c582297fd3869666b7/filetype-1.0.5.tar.gz"
    sha256 "17a3b885f19034da29640b083d767e0f13c2dcb5dcc267945c8b6e5a5a9013c7"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0f/86/e19659527668d70be91d0369aeaa055b4eb396b0f387a4f92293a20035bd/pycparser-2.20.tar.gz"
    sha256 "2d475327684562c3a96cc71adf7dc8c4f0565175cf86b6d7a404ff4c771f15f0"
  end

  resource "Pyphen" do
    url "https://files.pythonhosted.org/packages/03/c7/1a8957ffee550b00c6caa73ea23228edc020d1411ca14825b1e4d19b5118/Pyphen-0.9.5.tar.gz"
    sha256 "3b633a50873156d777e1f1075ba4d8e96a6ad0a3ca42aa3ea9a6259f93f18921"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/f5/4f/280162d4bd4d8aad241a21aecff7a6e46891b905a4341e7ab549ebaf7915/requests-2.23.0.tar.gz"
    sha256 "b3f43d496c6daba4493e7c431722aeb7dbc6288f52a6e04e7b6023b0247817e6"
  end

  resource "requests-async" do
    url "https://files.pythonhosted.org/packages/4a/e7/afbe47fa17068c80a5e80d75e1e960a98a5cfefe3590108ba76d9560cefc/requests-async-0.6.2.tar.gz"
    sha256 "8f128b66dec2974aa263e24410914b1829d3e1506497364c2edfa10112f55e0b"
  end

  resource "rfc3986" do
    url "https://files.pythonhosted.org/packages/34/c9/bcba83f13f628e947e23a0e54e18d0a6f13e5d03ca4ec04def0105c81bfc/rfc3986-1.3.2.tar.gz"
    sha256 "0344d0bd428126ce554e7ca2b61787b6a28d2bbd19fc70ed2dd85efe31176405"
  end

  resource "svgutils" do
    url "https://files.pythonhosted.org/packages/8c/35/21e59c17e0d435b953b0c1a8ffd914f4bf3411b52ae04030c0c4153ef929/svgutils-0.3.1.tar.gz"
    sha256 "cd52474765fd460ad2389947f77589de96142f6f0ce3f61e08ccfabeac2ff8af"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/57/6f/213d075ad03c84991d44e63b6516dd7d185091df5e1d02a660874f8f7e1e/tabulate-0.8.7.tar.gz"
    sha256 "db2723a20d04bcda8522165c73eea7c300eda74e0ce852d9022e0159d7895007"
  end

  resource "tinycss2" do
    url "https://files.pythonhosted.org/packages/0b/10/8332e2a40334292e584c88f24ebf1635c1704f77be50af73cccc7babdbb7/tinycss2-1.0.2.tar.gz"
    sha256 "6427d0e3faa0a5e0e8c9f6437e2de26148a7a197a8b0992789f23d9a802788cf"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/09/06/3bc5b100fe7e878d3dee8f807a4febff1a40c213d2783e3246edde1f3419/urllib3-1.25.8.tar.gz"
    sha256 "87716c2d2a7121198ebcb7ce7cccf6ce5e9ba539041cfbaeecfb641dc0bf6acc"
  end

  resource "Wand" do
    url "https://files.pythonhosted.org/packages/a3/ff/22a74061e56888c8813c4c86274e166f71a1305ea76dd4c75fcd14e51dd3/Wand-0.5.9.tar.gz"
    sha256 "6eaca78e53fbe329b163f0f0b28f104de98edbd69a847268cc5d6a6e392b9b28"
  end

  resource "WeasyPrint" do
    url "https://files.pythonhosted.org/packages/b1/f7/e3618eb126bc683638d36f4fc61b0e4027f078628f7150da7f82e4d06c30/WeasyPrint-51.tar.gz"
    sha256 "b3e971973a4f03c1430e6b838b75b5b57630415fcae8666d2be1347630ff6d6a"
  end

  resource "webencodings" do
    url "https://files.pythonhosted.org/packages/0b/02/ae6ceac1baeda530866a85075641cec12989bd8d31af6d5ab4a3e8c92f47/webencodings-0.5.1.tar.gz"
    sha256 "b36a1c245f2d304965eb4e0a82848379241dc04b865afcc4aab16748587e1923"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/d6/67/6e2507586eb1cfa6d55540845b0cd05b4b77c414f6bca8b00b45483b976e/yarl-1.4.2.tar.gz"
    sha256 "58cd9c469eced558cd81aa3f484b2924e8897049e06889e8ff2510435b7ef74b"
  end

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/48/69/d87c60746b393309ca30761f8e2b49473d43450b150cb08f3c6df5c11be5/appdirs-1.4.3.tar.gz"
    sha256 "9e5896d1372858f8dd3344faf4e5014d21849c756c8d5701f78f8a103b372d92"
  end

  resource "distlib" do
    url "https://files.pythonhosted.org/packages/7d/29/694a3a4d7c0e1aef76092e9167fbe372e0f7da055f5dcf4e1313ec21d96a/distlib-0.3.0.zip"
    sha256 "2e166e231a26b36d6dfe35a48c4464346620f8645ed0ace01ee31822b288de21"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/14/ec/6ee2168387ce0154632f856d5cc5592328e9cf93127c5c9aeca92c8c16cb/filelock-3.0.12.tar.gz"
    sha256 "18d82244ee114f543149c66a6e0c14e9c4f8a1044b5cdaadd0f82159d6a6ff59"
  end

  resource "importlib-metadata" do
    url "https://files.pythonhosted.org/packages/b4/1b/baab42e3cd64c9d5caac25a9d6c054f8324cdc38975a44d600569f1f7158/importlib_metadata-1.6.0.tar.gz"
    sha256 "34513a8a0c4962bc66d35b359558fd8a5e10cd472d37aec5f66858addef32c1e"
  end

  resource "pbr" do
    url "https://files.pythonhosted.org/packages/98/8a/defa5215d2dcf98cc80f4783e951a8356e38f352f7a169ae11670dcb1f25/pbr-5.4.4.tar.gz"
    sha256 "139d2625547dbfa5fb0b81daebb39601c478c21956dc57e2e07b74450a8c506b"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/21/9f/b251f7f8a76dec1d6651be194dfba8fb8d7781d10ab3987190de8391d08e/six-1.14.0.tar.gz"
    sha256 "236bdbdce46e6e6a3d61a337c0f8b763ca1e8717c03b369e87a7ec7ce1319c0a"
  end

  resource "stevedore" do
    url "https://files.pythonhosted.org/packages/be/19/83fd12828f879f53b85fe820925776aecda710944279e47a2dac53444adc/stevedore-1.32.0.tar.gz"
    sha256 "18afaf1d623af5950cc0f7e75e70f917784c73b652a34a12d90b309451b5500b"
  end

  resource "virtualenv" do
    url "https://files.pythonhosted.org/packages/98/30/13ec6895dd1e2aaef956cc587e19c88fca00b2be52bb29cc4b09995aded5/virtualenv-20.0.15.tar.gz"
    sha256 "9e81279f4a9d16d1c0654a127c2c86e5bca2073585341691882c1e66e31ef8a5"
  end

  resource "virtualenv-clone" do
    url "https://files.pythonhosted.org/packages/1d/51/076f3a72af6c874e560be8a6145d6ea5be70387f21e65d42ddd771cbd93a/virtualenv-clone-0.5.4.tar.gz"
    sha256 "665e48dd54c84b98b71a657acb49104c54e7652bce9c1c4f6c6976ed4c827a29"
  end

  resource "virtualenvwrapper" do
    url "https://files.pythonhosted.org/packages/c1/6b/2f05d73b2d2f2410b48b90d3783a0034c26afa534a4a95ad5f1178d61191/virtualenvwrapper-4.8.4.tar.gz"
    sha256 "51a1a934e7ed0ff221bdd91bf9d3b604d875afbb3aa2367133503fee168f5bfa"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/ce/8c/2c5f7dc1b418f659d36c04dec9446612fc7b45c8095cc7369dd772513055/zipp-3.1.0.tar.gz"
    sha256 "c599e4d75c98f6798c509911d08a22e6c021d074469042177c8c86fb92eefd96"
  end

  resource "mpmath" do
    url "https://files.pythonhosted.org/packages/ca/63/3384ebb3b51af9610086b23ea976e6d27d6d97bf140a76a365bd77a3eb32/mpmath-1.1.0.tar.gz"
    sha256 "fc17abe05fbab3382b61a123c398508183406fa132e0223874578e20946499f6"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/61/b4/475114b3f1671da634f89239e61038f8742d9ac13aa34b32a05bf8022d22/multidict-4.7.5.tar.gz"
    sha256 "aee283c49601fa4c13adc64c09c978838a7e812f85377ae130a24d7198c0331e"
  end

  resource "markdown2" do
    url "https://files.pythonhosted.org/packages/e3/93/d37055743009d1a492b2670cc215831a388b3d6e4a28b7672fdf0f7854f5/markdown2-2.3.8.tar.gz"
    sha256 "7ff88e00b396c02c8e1ecd8d176cfa418fb01fe81234dcea77803e7ce4f05dbe"
  end

  resource "svgScissors" do
    url "https://files.pythonhosted.org/packages/d4/ad/dca406b3cc6ab62675d26af471c654af978c8e82e927d1fb1b7de638d468/svgScissors-0.0.7.tar.gz"
    sha256 "173cdb440c2c14bde0b8e96609dc13e7f67edbf84a8e5eb40c6a48a880b05d4a"
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