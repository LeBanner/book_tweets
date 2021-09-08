require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @tweet = FactoryBot.build(:tweet)
  end

  describe 'ツイートの保存' do
    cotext 'ツイートが投稿できる場合' do
      it '画像とテキストがあれば投稿できる' do
        expect(@tweet).to be_valid
      end
      it 'テキストがあれば投稿できる' do
        @tweet.image = ''
        expect(@tweet).to be_valid
      end
    end
    cotext 'ツイートが投稿できない場合' do
      it 'テキストがからでは投稿できない' do
        @tweet.text = ''
        @twwet.valid?
        expect(@tweet.errors.full_messages).to include("Text can't be blank")
      end
      it 'ユーザが紐付いていなければ投稿できない' do
      end
    end

end
