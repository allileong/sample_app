require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title("Ruby on Rails Tutorial Sample App") }
    it { should_not have_title('| Home') }
  end

  describe "Help Page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    # it "should have the title 'Help'" do
    #   visit '/static_pages/help'
    #   expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
    # end

  end

  describe "About Page" do
    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
  end

  describe "Contact Page" do
    it "should have the content 'Contact'" do
      visit about_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Contact')
    end
  end

end
