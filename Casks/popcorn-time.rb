cask :v1 => 'popcorn-time' do
  version '0.3.8-2'
  sha256 '16ae386ef16a16359068ec62d9a8afc72765a94e83398cdbe4bc7b86deb753be'

  url "http://188.166.124.227/build/Popcorn-Time-#{version}-Mac.dmg", :user_agent => :fake
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
