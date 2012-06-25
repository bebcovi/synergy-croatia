require 'spec_helper'
require 'date'

describe Training do
  describe "uploading files to Dropbox", :vcr do
    let(:dropbox_client)          { SynergyCroatia::Application.config.dropbox_client }

    context "create" do
      it "uploads when files are given" do
        training = create(:training)

        training.infoletter.should be_on_dropbox
        training.participation_form.should be_on_dropbox
        training.destroy
      end

      it "saves the right filename on multiple files with the same name" do
        training1 = create(:training)
        training2 = create(:training)

        training1.infoletter.should_not == training2.infoletter
        training1.participation_form.should_not == training2.participation_form

        training1.infoletter.should be_on_dropbox
        training1.participation_form.should be_on_dropbox
        training2.infoletter.should be_on_dropbox
        training2.participation_form.should be_on_dropbox

        training1.destroy
        training2.destroy
      end
    end

    context "update" do
      it "uploads when files are given" do
        training = create(:training)

        infoletter_before_update = dropbox_client.metadata(training.infoletter)
        participation_form_before_update = dropbox_client.metadata(training.participation_form)
        training.update_attributes(attributes_for(:training))
        infoletter_after_update = dropbox_client.metadata(training.infoletter)
        participation_form_after_update = dropbox_client.metadata(training.participation_form)

        infoletter_before_update.should_not == infoletter_after_update
        participation_form_before_update.should_not == participation_form_after_update

        training.infoletter.should be_on_dropbox
        training.participation_form.should be_on_dropbox

        training.destroy
      end

      it "doesn't require files when updating" do
        training = create(:training)
        expect { training.update_attributes({}) }.to_not raise_error
        training.destroy
      end
    end

    context "destroy" do
      it "deletes files" do
        training = create(:training)

        infoletter, participation_form = training.infoletter, training.participation_form
        infoletter.should be_on_dropbox
        participation_form.should be_on_dropbox

        training.destroy

        infoletter.should_not be_on_dropbox
        participation_form.should_not be_on_dropbox
      end
    end
  end
end
