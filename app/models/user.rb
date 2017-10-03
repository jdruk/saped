class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  mount_uploader :article, ArticleUploader
  
  # Regras de négocio
  validates :name, presence: true
  validates :cpf, presence: true
  
  # Relacionamentos
  belongs_to :course
  belongs_to :theme
  belongs_to :participation
  
  def student_ufpi
   if matriculation.length > 0 or matriculation != ""
      matriculation
   else
     institution
   end
  end
  
  def self.articles
    User.order(:name).order(:theme_id).where.not(:article=> nil).where(pay: true)
  end
  
  def status_pay
    if pay
      'Pagamento confirmado!'
    else
      'Aguardando confirmação pagamento'
    end
  end
  
  def self.poster
    # Participation.create! name: 'Apresentar pôster'
    # Participation.create! name: 'Apresentar trabalho oral'
    User.articles.where(
      participation: Participation.where(
        name: 'Apresentar pôster').first)
  end
  
  def self.trabalho_oral
    User.articles.where(
      participation: Participation.where(name: 'Apresentar trabalho oral').first)
  end
  
  def self.confirmeds
    User.order(:name).where(pay: true)
  end
  
  def cpf_formatado
    a = cpf.gsub /[^\d]/ , ''  
    a[0,3] + '.' + a[3,3] + '.' + a[6,3] + '-' + a[9,2]
  end
  
  def name_formatado
    name.upcase
  end
end
