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
end
