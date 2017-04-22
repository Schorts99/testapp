require 'rails_helper.rb'

feature "Creating Posts" do
  scenario "can create job" do
    # Visitar la ruta de la raíz
    visit '/'

    # Cliquear en el link de crear post
    click_link "Crear publicación"

    # Llenar el formulario con la información requerida
    fill_in "Título", with: 'title'
    fill_in "Contenido", with: 'caption'

    # Cliquear en aceptar
    click_button 'Create Post'

    # Esperar que la página tenga el contenido que subimos
    expect(page).to have_content('title')
    expect(page).to have_content('caption')
  end
end
