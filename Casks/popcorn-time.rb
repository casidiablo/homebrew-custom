cask :v1 => 'popcorn-time' do
  version '0.3.7-1'
  sha256 'ef21b6db873ee173883390bfc83204aa28b869ee24545cc0b6706152f46710ed'

  url "https://cdn.popcorntime.io/build/Popcorn-Time-#{version.gsub('-', '.')}-Mac.dmg", :user_agent => :fake
  appcast 'https://popcorntime.io/update.json',
    :sha256 => 'a9bd0f4938c7bd1a8a3e42efa32eafa9a97f2b9100283b7a15a4fc5c6213cbc7',
    :format => :unknown
  name 'Popcorn Time'
  homepage 'http://popcorntime.io/'
  license :gpl

  app 'Popcorn-Time.app'

  uninstall :quit => ['com.intel.nw', 'com.intel.nw.helper'],
    :delete => '/$TMPDIR$/Popcorn-Time'
  zap :delete => '~/Library/Application Support/Popcorn-Time'
end
