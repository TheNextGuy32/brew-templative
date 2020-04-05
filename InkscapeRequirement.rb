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