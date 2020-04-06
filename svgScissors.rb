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
  depends_on "pango"
  
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
    virtualenv_install_with_resources
  end


  test do
    system "#{bin}/cli", "--help"
  end
end