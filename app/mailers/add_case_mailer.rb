# coding: utf-8
class AddCaseMailer < ApplicationMailer
  default from:'notifier@phalanxware.com'

  def index
    mail(to: 'phkjinc@gmail.com', subject: 'Welcome to My Awesome Site')
  end

  def add_case(new_case)
    @case = new_case
    mail(bcc: User.all.pluck(:email), subject: '[不審者情報テスト版] 新しい事例が追加されました')
  end
end
