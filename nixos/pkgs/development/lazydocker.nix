{buildGoModule, ... }
{
  lazydocker = buildGoModule rec {
    pname = "lazydocker";
    version = "0.24.1";

    src = fetchFromGitHub {
      owner = "jesseduffield";
      repo = "lazydocker";
      rev = "v${version}";
      #hash = "sha256-Gjw1dRrgM8D3G7v6WIM2+50r4HmTXvx0Xxme2fH9TlQ=";
    };

    #vendorHash = "sha256-ciBIR+a1oaYH+H1PcC8cD8ncfJczk1IiJ8iYNM+R6aA=";

    meta = {
      description = "Simple command-line snippet manager, written in Go";
      homepage = "https://github.com/jesseduffield/lazydocker";
      license = lib.licenses.mit;
    };
  };
}
