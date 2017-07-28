require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Post.create!(title: "New Question Title", body: "New Question Body") }
  let(:answer) { Answer.create!(body: "Answer Body", post: question) }

  describe "attributes" do
    it "has a body attribute" do
      expect(answer).to have_attributes(body: "Answer Body")
    end
  end
end
