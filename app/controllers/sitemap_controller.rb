 class SitemapController < ApplicationController
   def index
     @static_pages = [root_url, subscribe_url]
     @articles = Article.published
     @issues = Issue.all_published
     respond_to do |format|
       format.xml
     end
   end
 end