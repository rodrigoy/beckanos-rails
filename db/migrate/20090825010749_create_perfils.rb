class CreatePerfils < ActiveRecord::Migration
  def self.up
    create_table :perfils do |t|
      t.string :login, :limit => 20
      t.string :senha, :limit => 20
      t.string :nome, :limit => 50
      t.text :descricao
      t.date :data_nasc
      t.string :estado_civil
      t.timestamps
    end
    
    Perfil.create(:login => 'admin', :senha => 'teste123', :nome => 'Administrador', :descricao => %W{"
    País: Brasil
    Cidade/Município: São Paulo
    Endereço de email:  msamado@gmail.com Clique aqui para desabilitar o envio de emails para este endereço
    Cursos: Leituras Recomendadas G3, De Maomé a Bin Laden: O que todo cristão precisa saber sobre o Islã, Introdução ao Ambiente de EAD
    First access: ter�a, 11 dezembro 2007, 11:20  (1 ano 257 dias)
    Último acesso:  ter�a, 25 agosto 2009, 00:57  (4 horas 58 minutos)
    "})
    
  end

  def self.down
    drop_table :perfils
  end
end
