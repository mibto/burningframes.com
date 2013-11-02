class IndexController < ApplicationController
  def home
  end

  def about
    @page_title = t("routes.index.about")
  end

  def works
    @page_title = t("routes.index.works")

  end

  def contact
    @page_title = t("routes.index.contact")
  end
end
