cask :v1 => 'popcorn-time' do
  version '0.3.7-2'
  sha256 'faecc83aa91d439da9a40269556afbfcad9b280bcf66484e5884cb6d604e6458'

  url "https://get.popcorntime.io/build/Popcorn-Time-#{version.gsub('-', '.')}-Mac.dmg", :user_agent => :fake
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
