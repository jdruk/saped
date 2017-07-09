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
  
  def student_ufpi
   matriculation
  end
  
end
