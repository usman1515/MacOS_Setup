You can install Python packages with
  pip3 install <package>
They will install into the site-package directory
  /opt/homebrew/lib/python3.10/site-packages



If you need to have openjdk first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> /Users/usmansiddique/.bash_profile

For compilers to find openjdk you may need to set:
  export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

To use with IntelliJ, set the Scala home to:
  /opt/homebrew/opt/scala/idea
