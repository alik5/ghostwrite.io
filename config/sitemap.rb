SitemapGenerator::Sitemap.default_host = 'http://www.ghostwrite.io'
SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new(
:s3_credentials => {
    :bucket => ENV['S3_BUCKET_NAME'],
    :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
    :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
	}
)

SitemapGenerator::Sitemap.public_path = 'tmp/'
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.create do
  add '/blog', 'changefreq': 'weekly'
  Article.find_each do |article|
    add article_path(article), lastmod: article.updated_at
  end
end

SitemapGenerator::Sitemap.ping_search_engines