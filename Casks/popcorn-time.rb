class PopcornTime < Cask
  version '0.3.5'
  sha256 '3726f4ca44a1323d0bdcbf428730ce50ddfca02cbbd42fab28b7055a51040b6e'

  url "https://cdn.popcorntime.io/build/Popcorn-Time-#{version}-Mac.dmg"
  homepage 'http://popcorntime.io/'
  license :gpl

  app 'Popcorn-Time.app'
end
