require 'rails_helper'

RSpec.describe User, type: :model do
  it "Not Nullの項目が全て未入力の場合はエラーであることを確認" do
    user = User.new(
      name: '',
      email: '',
      password: ''
      )
    expect(user).not_to be_valid
  end
  it "Not Nullの項目nameが未入力の場合はエラーであることを確認" do
    user = User.new(
      name: '',
      email: 'test@mail.com',
      password: 'qwertyuiop'
      )
    expect(user).not_to be_valid
  end
  it "Not Nullの項目emailが未入力の場合はエラーであることを確認" do
    user = User.new(
      name: 'testtest',
      email: '',
      password: 'qwertyuiop'
      )
    expect(user).not_to be_valid
  end
  it "Not Nullの項目passwordが未入力の場合はエラーであることを確認" do
    user = User.new(
      name: 'testtest',
      email: 'test@mail.com',
      password: ''
      )
    expect(user).not_to be_valid
  end
  it "Not Nullの項目が全て入力されている場合はエラーでないことを確認" do
    user = User.new(
      name: 'testtest',
      email: 'test@mail.com',
      password: 'qwertyuiop'
      )
    expect(user).to be_valid
  end
  it "passwordが5文字以下の場合はエラーであることを確認" do
    user = User.new(
      name: 'testtest',
      email: 'test@mail.com',
      password: 'testt'
      )
    expect(user).not_to be_valid
  end
  it "passwordが6文字以上の場合はエラーでないことを確認" do
    user = User.new(
      name: 'testtest',
      email: 'test@mail.com',
      password: 'testte'
      )
    expect(user).to be_valid
  end
  it "emailがフォーマットに則っている場合はエラーでないことを確認" do
    user = User.new(
      name: 'testtest',
      email: 'test@mail.com',
      password: 'testte'
      )
    expect(user.email).to match(/\A[^@\s]+@[^@\s]+\z/)
  end
  it "emailがフォーマットに則っていない場合はエラーになることを確認" do
    user = User.new(
      name: 'testtest',
      email: 'testmail.com',
      password: 'testte'
      )
    expect(user.email).not_to match(/\A[^@\s]+@[^@\s]+\z/)
  end
end
