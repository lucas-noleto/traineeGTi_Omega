class Membro < ActiveRecord::Base
##Validações  

validates_presence_of :name, message: "(Nome) deve ser preenchido"
validates_presence_of :email, message: "(Email) deve ser preenchido"
validates_presence_of :course, message: "(Curso) deve ser preenchido" 
validates_presence_of :role, message: "(Cargo) deve ser preenchido" ##Uniqueness do cargo. 1 presidente mas + de 1 trainee e desenvolvedor 
validates_presence_of :JoinTime, message: "deve ser preenchido"
validates_presence_of :Rg, message: "deve ser preenchido"
validates_presence_of :CPF, message: "deve ser preenchido"

validates_uniqueness_of :name, message: "(Membro) já cadastrado"
validates_uniqueness_of :email, message: "já cadastrado"
validates_uniqueness_of :Rg, message: "já cadastrado"
validates_uniqueness_of :CPF, message: "já cadastrado"

validates :Rg, length: { is: 13 }
validates :CPF, length: { is: 11 }



has_many :advertencia	
	
end
