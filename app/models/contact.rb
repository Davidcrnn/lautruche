class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :telephone
  attribute :message
  attribute :nickname,  :captcha  => true



  def headers
    {
      :subject => "Formulaire de contact",
      :to => "lesautruches@hotmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
