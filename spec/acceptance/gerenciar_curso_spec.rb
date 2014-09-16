# coding: utf-8

require 'spec_helper'

feature 'gerenciar curso' do

  scenario 'incluir curso' do # , :js => true do

    visit new_curso_path

    preencher_e_verificar_curso

    

  end

  scenario 'alterar curso' do #, :js => true do

    curso = FactoryGirl.create(:curso)

    visit edit_curso_path(curso)

    preencher_e_verificar_curso



  end

   scenario 'excluir curso' do #, :javascript => true do

       curso = FactoryGirl.create(:curso)

        visit cursos_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_curso

     
      fill_in 'nome_curso', :with => "Sistema de Informação"
     fill_in 'numero_periodo', :with => 8 
      
      click_button 'Salvar'

      
      page.should have_content 'nome_curso: Sistema de Informação'
      page.should have_content 'numero_periodo: 8'


   end
end



