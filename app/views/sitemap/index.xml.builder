xml.instruct!
xml.urlset(
  'xmlns'.to_sym => "http://www.sitemaps.org/schemas/sitemap/0.9"
  ) do
  @static_pages.each do |page|
    xml.url do
      xml.loc "#{page}"
      xml.changefreq("monthly")
    end
  end
  @issues.each do |issue|
    xml.url do
      xml.loc "#{issue_url(issue)}"
      xml.changefreq("monthly")
    end
  end
  @articles.each do |article|
    xml.url do
      xml.loc "#{article_url(article)}"
      xml.lastmod article.updated_at.strftime("%F")
      xml.changefreq("monthly")
    end
  end
end