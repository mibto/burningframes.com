class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :_set_meta_tag_defaults

  def _set_meta_tag_defaults
    set_meta_tags site: t("routes.index.index"),
      authors: ["Michael Brodmann", "B&L Informatik"],
      #keywords: ["test", "foo", "baar"],
      #description: "test beschreibung",
      separator: ">",
      noindex: !Rails.env.production?,
      nofollow: !Rails.env.production?,
      reverse: true
  end
end
