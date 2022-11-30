config.set("fileselect.handler", "external")
config.set("fileselect.single_file.command", ['st','-c','ranger,ranger', '-e', 'ranger', '--choosefile', '{}'])
config.set("fileselect.multiple_files.command", ['st','-c','ranger,ranger', '-e', 'ranger', '--choosefiles', '{}'])
c.editor.command = ["st", "-e","vim","{file}","-c", "normal {line}G{column}l"]

config.load_autoconfig()
c.colors.webpage.darkmode.enabled = False
#config.set('colors.webpage.darkmode.enabled', True, '*://github.com/*')
config.bind('xb', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle statusbar.show always never;; config-cycle tabs.show always never')

config.bind(',ap', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/css/apprentice/apprentice-all-sites.css ""')
config.bind(',dr', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/css/darculized/darculized-all-sites.css ""')
config.bind(',gr', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/css/gruvbox/gruvbox-all-sites.css ""')
config.bind(',sd', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/css/solarized-dark/solarized-dark-all-sites.css ""')
#config.bind(',sl', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/css/solarized-light/solarized-light-all-sites.css')
config.bind(',sl', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/css/solarized-light/solarized-light-all-sites.css ""')
#  ~/.config/qutebrowser/css/solarized-light/solarized-light-all-google.com.css')
config.bind(',cc', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/css/custom/solarized-light-all-sites.css ""')
config.bind(',p', 'config-cycle content.pdfjs true false')
config.bind(',a', 'config-cycle content.autoplay true false')
config.bind(',w', 'config-cycle tabs.tabs_are_windows true false')
config.bind(',d', 'download-clear')
config.set('content.autoplay', True, '*://us.bbcollab.com/*')
#config.set('tabs.tabs_are_windows', True, '*://localhost:8000/*')
config.set('content.javascript.can_access_clipboard', True, '*://github.com/*')
#config.set('content.javascript.can_open_tabs_automatically', True, '*://antander.com/')

#youtube videos
config.bind(',M', 'spawn --detach mpv --ytdl-format=18 --keep-open=yes {url}')
config.bind(',;', 'spawn --detach mpv --ytdl-format=22 --keep-open=yes {url}')
config.bind(',:', 'spawn --detach mpv --keep-open=yes {url}')
config.bind(',m', 'hint links spawn --detach  mpv --ytdl-format=18 --keep-open=yes {hint-url}')
config.bind(',,', 'hint links spawn --detach  mpv --ytdl-format=22 --keep-open=yes {hint-url}')
config.bind(',.', 'hint links spawn --detach  mpv --keep-open=yes {hint-url}')
#140         m4a       audio only  DASH audio , audio@128k (worst)
#160         mp4       144p        DASH video , video only
#133         mp4       240p        DASH video , video only
#134         mp4       360p        DASH video , video only
#135         mp4       480p        DASH video , video only
#136         mp4       720p        DASH video , video only
#17          3gp       176x144     
#36          3gp       320x240     
#5           flv       400x240     
#43          webm      640x360     
#18          mp4       640x360     
#22          mp4       1280x720    (best)

# TOGgle this, santander maybe content.javascript.can_open_tabs_automatically
