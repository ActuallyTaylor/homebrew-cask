cask 'skim' do
  version '1.4.17'
  sha256 '6d48d2bdec04ccd778a2b173f8d7173dd3d474b32fc4f3c260120304d598795a'

  url "http://downloads.sourceforge.net/project/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast 'http://skim-app.sourceforge.net/skim.xml',
          :sha256 => '08faec640c9027564ea12e45d9fe88009512f9da900cd7c0920bbaab9ac47c8b'
  name 'Skim'
  homepage 'http://skim-app.sourceforge.net/'
  license :bsd

  app 'Skim.app'
  binary 'Skim.app/Contents/SharedSupport/displayline'
  binary 'Skim.app/Contents/SharedSupport/skimnotes'
  binary 'Skim.app/Contents/SharedSupport/skimpdf'

  zap :delete => '~/Library/Preferences/net.sourceforge.skim-app.skim.plist'
end
