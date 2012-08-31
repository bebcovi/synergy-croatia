require "spec_helper"

describe ApplicationController do
  controller do
    before_filter :store_referer!

    def index
      render nothing: true
    end
  end

  it "changes the locale based on the URL" do
    I18n.locale.should == :hr

    get :index, locale: :en
    I18n.locale.should == :en

    get :index, locale: :hr
    I18n.locale.should == :hr

    I18n.locale = :en
    get :index, locale: nil
    I18n.locale.should == :hr
  end

  it "keeps the locale during browsing" do
    Rails.application.routes.recognize_path(root_path)[:locale].should_not == "en"
    get :index, locale: :en
    Rails.application.routes.recognize_path(root_path)[:locale].should == "en"
  end

  it "stores the referer" do
  end
end
