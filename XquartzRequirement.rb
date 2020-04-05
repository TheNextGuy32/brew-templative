class XquartzRequirement < Requirement
    fatal true
  
    satisfy(:build_env => false) { which("xquartz") }
  
    def message; <<~EOS
      xquartz is required; install it via one of:
        brew cask install xquartz
      EOS
    end
  end