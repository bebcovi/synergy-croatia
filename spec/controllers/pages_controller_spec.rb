require 'spec_helper'

describe PagesController do
  describe "displaying the #index page depending on user's last visit" do
    context "user hasn't recently visited the website" do
      it "displays the #index page" do
        get :index
        response.should_not be_a_redirect

        get :index, {}, {:last_visited => 1.year.ago}
        response.should_not be_a_redirect
      end
    end

    context "user has recently visited the website" do
      it "redirects to #about page" do
        get :index, {}, {:last_visited => 10.days.ago}
        response.should be_a_redirect
      end
    end

    context "user clicked on #index from another page" do
      it "displays the #index page" do
        request.env['HTTP_REFERER'] = about_url
        get :index
        response.should_not be_a_redirect
      end
    end
  end
end
