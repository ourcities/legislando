require "rails_helper"

RSpec.describe ApplicationController do
  controller do
    skip_authorization_check :index

    def index
      render nothing: true
    end
  end

  describe "#current_user" do
    context "when the user is not logged in" do
      it "should be nil" do
        get :index
        expect(subject.current_user).to be_nil
      end
    end

    context "when the user is logged in" do
      let(:user) { User.make! }

      it "should be the logged in user" do
        login user, 'controller'
        get :index
        expect(subject.current_user).to be_eql(user)
      end
    end
  end
end
