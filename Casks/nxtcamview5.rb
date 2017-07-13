cask 'nxtcamview5' do
  version '5.0.1'
  sha256 '4611f3102d5f20a028e40d5e34e21f09d23ecd5c94f6cef5b14cc2099eebc071'

  url "https://github.com/dlech/NXTCamView5/releases/download/mac%2F#{version}/nxtcamview5-mac-#{version}.dmg"
  name 'NXTCamView5'
  homepage 'https://github.com/mindsensors/NXTCamView5'

  app 'NXTCamView5.app'

  zap trash: '~/Library/Application Support/mindsensors.com/NXTCamView5'
end
