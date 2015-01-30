Monologue.config do |config|
  config.site_name = "Ghostwrite.io Blog"
  config.site_subtitle = "Write Well, Easier."
  config.site_url = "https://www.ghostwrite.io/blog"

  config.meta_description = "Learn how to write a cover letter, networking email, or get a date online with current, credible, and playful 'how to' posts."
  config.meta_keyword = "cover letter, startup, ruby, tech"

  config.admin_force_ssl = false
  config.posts_per_page = 10

  config.disqus_shortname = "alikfitz"

  # LOCALE
  config.twitter_locale = "en" # "fr"
  config.facebook_like_locale = "en_US" # "fr_CA"
  config.google_plusone_locale = "en"

   config.layout               = "layouts/home"

  # ANALYTICS
  # config.gauge_analytics_site_id = "YOUR COGE FROM GAUG.ES"
  # config.google_analytics_id = "YOUR GA CODE"

  config.sidebar = ["latest_posts", "latest_tweets", "categories", "tag_cloud"]


  #SOCIAL
  config.twitter_username = "alik5"
  config.facebook_url = "https://www.facebook.com/ali.fitzgerald.71"
  config.facebook_logo = 'logo.png'
  config.google_plus_account_url = "https://plus.google.com/u/1/115273180419164295760/posts"
  config.linkedin_url = "https://www.linkedin.com/pub/alexandra-fitzgerald/96/814/616"
  config.github_username = "alik5"
  config.show_rss_icon = true

end