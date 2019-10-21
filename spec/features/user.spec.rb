require 'rails_helper'

RSpec.feature "ユーザー登録機能", type: :feature do
  # scenario（itのalias）の中に、確認したい各項目のテストの処理を書きます。
  scenario "ユーザー登録失敗のテスト" do
    visit new_user_registration_path

    find(".name").set("")
    find(".email").set("")
    find(".password").set("")
    find(".password_confirmation").set("")
    find(".signup").click

    expect(page).to have_content "保存されませんでした"
  end

  scenario "ユーザー登録成功のテスト" do
    visit new_user_registration_path

    find(".name").set("test5")
    find(".email").set("test5@email.com")
    find(".password").set("5suke5suke")
    find(".password_confirmation").set("5suke5suke")
    find(".signup").click

    expect(page).to have_content "アカウント登録が完了しました。"
    # save_and_open_page
  end

  scenario "ログイン失敗のテスト" do
    visit new_user_session_path

    find(".name").set("")
    find(".email").set("")
    find(".password").set("")
    find(".password_confirmation").set("")
    find(".signup").click

    expect(page).to have_content "保存されませんでした"
  end

  # scenario "タスク作成のテスト" do
  #
  # end
  #
  # scenario "タスク詳細のテスト" do
  #
  # end
end
