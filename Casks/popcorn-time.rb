cask :v1 => 'popcorn-time' do
  version '0.3.8-0'
  sha256 'f1c7edbb24ee582b44e30eb880f81c9140d7c8035f6484283a1f0e45fb840ddc'

  url "https://get.popcorntime.io/build/Popcorn-Time-#{version}-Mac.dmg", :user_agent => :fake
  appcast 'https://popcorntime.io/update.json',
    :sha256 => '3354d21ad453807bd663a20861dc3da36f3d2860929d30fc30ee15f87e8622af',
    :format => :unknown
  name 'Popcorn Time'
  homepage 'http://popcorntime.io/'
  license :gpl

  app 'Popcorn-Time.app'

  uninstall :quit => ['com.intel.nw', 'com.intel.nw.helper'],
            :delete => '/$TMPDIR$/Popcorn-Time'

  zap :delete => [
                  '~/Library/Application Support/Popcorn-Time',
                  '~/Library/Preferences/io.nwjs.nw.plist',
                  '~/Library/Preferences/io.nwjs.nw.helper.plist'
                 ]
end
