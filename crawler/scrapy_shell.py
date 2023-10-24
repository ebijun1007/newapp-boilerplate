from scrapy.cmdline import execute
from scrapy.utils.project import get_project_settings

settings = get_project_settings()
settings.set('DOWNLOADER_MIDDLEWARES', {'myproject.middlewares.MyCustomDownloaderMiddleware': 900})

execute(['scrapy', 'shell', 'http://example.com'], settings=settings)
