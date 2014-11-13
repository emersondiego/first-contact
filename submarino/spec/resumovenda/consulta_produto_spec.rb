require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "ConsultaProdutoSpec" do

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
  
  it "test_consulta_produto_spec" do
    @driver.get(@base_url + "/")
    @driver.find_element(:name, "q").clear
    @driver.find_element(:name, "q").send_keys "fogão"
    @driver.find_element(:css, "input.spt-lupa-buscar").click
    @driver.find_element(:css, "li[title=\"Cooktop\"] > a.neemu-filter-link > span.neemu-filter-text").click
    @driver.find_element(:link, "Cooktop a Gás Brastemp Ative! BDD61AEUNA 4 Bocas Bivolt Preto").click
    @driver.find_element(:css, "body.product-page").click
    @driver.find_element(:css, "div.BVRRRatingSummaryLinks > #BVRRRatingSummaryLinkReadID > a[name=\"BV_TrackingTag_Rating_Summary_1_ReadReviews_108571059\"] > span.BVRRCount.BVRRNonZeroCount").click
    @driver.find_element(:link, "Cooktop a Gás Casavitra 4 Bocas Triplo Dot...").click
  end
  
 #  def element_present?(how, what)
 #    ${receiver}.find_element(how, what)
 #    true
 #  rescue Selenium::WebDriver::Error::NoSuchElementError
 #    false
 #  end
 #  
 #  def alert_present?()
 #   ${receiver}.switch_to.alert
 #   true
 # rescue Selenium::WebDriver::Error::NoAlertPresentError
 #   false
 # end
  
 # def verify(&blk)
 #   yield
 # rescue ExpectationNotMetError => ex
 #   @verification_errors << ex
 # end
  
 # def close_alert_and_get_its_text(how, what)
 #   alert = ${receiver}.switch_to().alert()
 #   alert_text = alert.text
 #   if (@accept_next_alert) then
 #     alert.accept()
 #   else
 #     alert.dismiss()
 #   end
 #   alert_text
 # ensure
 #   @accept_next_alert = true
 # end
end
