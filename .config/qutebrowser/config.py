config.load_autoconfig(False)
config.source('gruvbox.py')

c.aliases = {'q': 'close', 'o': 'open', 'qa': 'quit', 'w': 'session-save', 'wq': 'quit --save', 'wqa': 'quit --save'}

config.set('content.local_content_can_access_remote_urls', True, 'file:///home/ivaaan/.local/share/qutebrowser/userscripts/*')
config.set('content.local_content_can_access_file_urls', False, 'file:///home/ivaaan/.local/share/qutebrowser/userscripts/*')
config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://accounts.google.com/*')

c.content.autoplay = False
c.content.cookies.accept = 'never'
c.content.cookies.store = False
c.content.blocking.method = 'auto'
c.content.blocking.adblock.lists = ['https://easylist.to/easylist/easylist.txt', 'https://easylist.to/easylist/easyprivacy.txt']
c.content.notifications.enabled = False
c.content.private_browsing = True

c.completion.web_history.max_items = 0
c.completion.open_categories = ['bookmarks']

c.editor.command = ['nvim', '-f', '{file}', '-c', 'normal {line}G{column0}l']

c.url.default_page = 'https://start.duckduckgo.com/A'
c.url.start_pages = 'https://start.duckduckgo.com'

c.window.transparent = False

c.colors.completion.category.bg = 'qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 #888888, stop:1 #505050)'
c.colors.webpage.bg = 'white'
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'
c.colors.webpage.darkmode.policy.images = 'never'
