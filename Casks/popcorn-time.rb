cask :v1 => 'popcorn-time' do
  version '0.3.5.2'
  sha256 'ade06bff28118b83a69f6dcad2e7cabdc0a5d5445b5e12b1b65587e263dc7f74'

  url "https://cdn.popcorntime.io/build/Popcorn-Time-#{version}-Mac.dmg"
  homepage 'http://popcorntime.io/'
  license :gpl

  app 'Popcorn-Time.app'
end
