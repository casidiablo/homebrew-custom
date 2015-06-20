cask :v1 => 'popcorn-time' do
  version '0.3.7-2'
  sha256 'a35b5402c84b69bf54c86c278c62d93d933506966c8c819e56f97877e4d2cfb7'

  url "https://get.popcorntime.io/build/Popcorn-Time-#{version.gsub('-', '.')}-Mac.dmg", :user_agent => :fake
  appcast 'https://popcorntime.io/update.json',
    :sha256 => '3354d21ad453807bd663a20861dc3da36f3d2860929d30fc30ee15f87e8622af',
    :format => :unknown
  name 'Popcorn Time'
  homepage 'http://popcorntime.io/'
  license :gpl

  app 'Popcorn-Time.app'

  uninstall :quit => ['com.intel.nw', 'com.intel.nw.helper'],
    :delete => '/$TMPDIR$/Popcorn-Time'
  zap :delete => '~/Library/Application Support/Popcorn-Time'
end
