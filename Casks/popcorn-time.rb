class PopcornTime < Cask
  version '0.3.2'
  sha256 'abeea0d1de945311d1552764a9842142c8d317ba7ea0b01c15d45f4bdd815206'

  url "https://cdn.popcorntime.io/build/Popcorn-Time-#{version}-Mac.dmg"
  homepage 'http://popcorntime.io/'

  link 'Popcorn-Time.app'
end
