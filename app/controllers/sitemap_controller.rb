class SitemapController < ApplicationController
  layout nil

  def index
    headers['Content-Type'] = 'application/xml'
    last_letter_type = LetterType.last
    if stale?(:etag => last_post, :last_modified => last_post.updated_at.utc)
      respond_to do |format|
        format.xml { @letter_types = Letter.sitemap } # sitemap is a named scope
      end
    end
  end
end