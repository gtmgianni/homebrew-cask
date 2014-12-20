cask :v1 => 'path-finder' do
  version :latest
  sha256 :no_check

  url 'http://get.cocoatech.com/PF7.zip'
  homepage 'http://www.cocoatech.com/pathfinder/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Path Finder.app'

  postflight do
    suppress_move_to_applications :key => 'kNTMoveToApplicationsFolderAlertSuppress'
  end

  zap :delete => [
                  '~/Library/Preferences/com.cocoatech.PathFinder.plist',
                  '~/Library/Application Support/Path Finder',
                 ]
end
