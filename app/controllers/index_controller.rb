class IndexController < ApplicationController
  def home
  end

  def about
    @page_title = t("routes.index.about")
  end

  def works
    @page_title = t("routes.index.works")
    @meta_tags["keywords"] << "testing zum adden"

  end

  def contact
    @page_title = t("routes.index.contact")
  end
end
