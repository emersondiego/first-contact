require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "ResumovendaSpec" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://www.submarino.com.br/"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end
  
  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end
  
  it "test_resumovenda_spec" do
    @driver.get(@base_url + "/")
    @driver.find_element(:css, "body.home-page.hd-float").click
    @driver.find_element(:name, "q").clear
    @driver.find_element(:name, "q").send_keys "ps4"
    @driver.find_element(:css, "input.spt-lupa-buscar").click
    @driver.find_element(:link, "Console PlayStation 4 500GB + Controle Dualshock 4").click
    @driver.find_element(:css, "input.spt-b-main-buy").click
   # sleep(5) 
    @driver.find_element(:css, "label > span.custom-input-radio.spt-b-check").click
  #  @driver.find_element(:xpath, "(//input[@name='codItemGuaranteeFusion[0]'])[2]").click
    @driver.find_element(:css, "input.spt-b-continue").click
    @driver.find_element(:name, "cep").clear
    @driver.find_element(:name, "cep").send_keys "01310-200"
    @driver.find_element(:xpath, "(//button[@type='submit'])[2]").click
    @driver.find_element(:xpath, "(//button[@type='submit'])[5]").click
    @driver.find_element(:name, "null:username").clear
    # logo abaixo entre aspas entrar com o email do user 
    @driver.find_element(:name, "null:username").send_keys "xxxxxx"
    @driver.find_element(:name, "null:password").clear
    # logo abaixo entre aspas entrar com a senha do user 
    @driver.find_element(:name, "null:password").send_keys "xxxxxx"
    @driver.find_element(:id, "btProsseguir").click
  end
  
#  def element_present?(how, what)
#    ${receiver}.find_element(how, what)
#    true
#  rescue Selenium::WebDriver::Error::NoSuchElementError
#    false
#  end
  
#  def alert_present?()
#    ${receiver}.switch_to.alert
#    true
#  rescue Selenium::WebDriver::Error::NoAlertPresentError
#    false
#  end
  
#  def verify(&blk)
#    yield
#  rescue ExpectationNotMetError => ex
#    @verification_errors << ex
#  end
  
#  def close_alert_and_get_its_text(how, what)
#    alert = ${receiver}.switch_to().alert()
#    alert_text = alert.text
#    if (@accept_next_alert) then
#      alert.accept()
#    else
#      alert.dismiss()
#    end
#    alert_text
#  ensure
#    @accept_next_alert = true
#  end

end
