class Contact < ApplicationRecord
attribute :nom,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :telephone
  attribute :message
  attribute :nickname,  :captcha  => true



  def headers
    {
      :subject => "Formulaire de contact",
      :to => "david.crenin@gmail.com",
      :from => %("#{nom}" <#{email}>)
    }
  end
end
