cask :v1 => 'popcorn-time' do
  version '0.3.6'
  sha256 '48419eaa34ab31ca071e010ff49c065ba23ad06bd8f1b50349308980e937dfeb'

  url "http://popcorn.obsidian.goender.net/build/Popcorn-Time-#{version}-Mac.dmg"
  homepage 'http://popcorntime.io/'
  license :gpl

  app 'Popcorn-Time.app'

  zap :delete => '~/Library/Application Support/Popcorn-Time'
end
