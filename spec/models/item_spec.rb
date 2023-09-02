require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品' do
    context '商品が保存できる場合' do
      it '全ての項目が正しく入力されていれば保存できる' do
        expect(@item).to be_valid
      end
    end

    context '商品が保存できない場合' do

      it 'color_idが未選択では登録できない' do
        @item.color_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Color can't be blank")
      end

      it 'userが紐付いていなければ出品できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('User must exist')
      end
    end
  end
end
