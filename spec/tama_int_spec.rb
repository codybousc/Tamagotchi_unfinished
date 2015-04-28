require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the tama path', {:type => :feature}) do
        it('shows tamas specs') do
            visit('/')
            fill_in('tama_name', :with => "Bootytron")
            click_button('CREATE LIFE!!')
            expect(page).to have_content("Food level: 10")
        end

        describe('the food_level path', {:type => :feature}) do
                it('shows tamas specs') do
                    visit('/stats')
                    fill_in('food_value', :with => "13")
                    click_button('Food Value')
                    expect(page).to have_content("Food level: 13")
                end
            end
end
