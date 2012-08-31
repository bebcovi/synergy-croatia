require "spec_helper"

describe ApplicationController do
  it "stores the referer" do
    @request.env["HTTP_REFERER"] = root_url
    visit new_training_path
    session[:referer].should == {controller: "pages", action: "news"}

    @request.env["HTTP_REFERER"] = trainings_url
    expect { visit new_training_path }.to_not change{session[:referer]}
  end
end
