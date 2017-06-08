# require 'spreadsheet'   #import spreadsheet library 
# myWorkbook = Spreadsheet.open('cholaTestData.xls')
# myWorkSheet = myWorkbook.worksheet "Customer_Corp"    #this take this first worksheet of the excel file (instead of 0, we can pass the sheet name as well by using 'Sheet1' or 'MyDataSheet')

# myWorkSheet.each do |row|
#             puts "#{row[0]}"
#             puts "#{row[1]}"
#         end 

require 'selenium-webdriver'
# require './chola_errorHandling.rb'
# require './leadCapture_v1.rb'

$browser = Selenium::WebDriver.for :chrome
$browser.navigate.to("https://sitleapweb.chola.murugappa.com/chola_web/Sales/#/login")
# $wait=Selenium::WebDriver::Wait.new(:timeout=>10)
# puts "\nLaunching Chola-Sales-VF application"
# puts "\n Please choose a role to login\n 1.SFE\n 2.CA\n"
# $login_role=gets.to_i

# module ElementLocators
# 	def ElementLocators.getElement(locator,attributeValue)
# 		if (locator=="name")
# 			return $browser.find_element(:name,attributeValue)
# 		elsif (locator=="xpath")
# 			return $browser.find_element(:xpath,attributeValue)
# 		else

# 		end
#  	end
# end 

# class SitLogin 
# 	include ElementLocators
# 	# include Error
# 	def initialize
# 		if ($login_role==1)
# 			@role="SFE"
# 			@user_id = "DIT441310"
# 			@pwdStr1="cifcl"
# 			@pwdStr2="@123"
# 			@pwd =  @pwdStr1+ @pwdStr2

# 		elsif ($login_role==2)
# 			@role="CA"
# 			@user_id = "DITCA005"
# 			@pwdStr1="cifcl"
# 			@pwdStr2="@123"
# 			@pwd =  @pwdStr1+ @pwdStr2
		
# 		else
# 			puts "Please choose a valid role.\n\n"

# 		end
# 	end

# 	def sit_login(locatorsForLogin)

# 		$wait.until {$browser.find_element(:name, locatorsForLogin["uname"])}

# 		login_uname=ElementLocators::getElement("name", locatorsForLogin["uname"])
# 		login_uname.send_keys(@user_id)
# 		login_pwd=ElementLocators::getElement("name",locatorsForLogin["pwd"])
# 		login_pwd.send_keys(@pwd)
# 		$browser.find_element(:class,locatorsForLogin["login_button"]).click
# 		$browser.manage.timeouts.implicit_wait = 5
# 		# Error::displayError
# 	end
		
# 	def role_select(locatorsForRoleSelection,locatorsForDashboard)
# 		selectRole_popUp=$browser.find_element(:xpath,locatorsForRoleSelection["selectRole_popUp"])

# 		$wait.until {$browser.find_element(:xpath,locatorsForRoleSelection["selectRole_popUp"])}
		
# 		if selectRole_popUp.displayed?
# 			dropdown_list = $browser.find_element(:name,locatorsForRoleSelection["roleDropdown"])
# 			options = dropdown_list.find_elements(:tag_name, 'option')
# 			options.each { |role| role.click if role.text == @role }
# 			$browser.manage.timeouts.implicit_wait=20
# 			# $browser.find_element(:class, 'modal-footer').find_element(:tag_name, "button").click
# 			$browser.find_element(:xpath,"//button[contains(text(),'OK')]").click
# 			puts "User is logging in as: " +@role +"\n\n"

# 			dashboard(locatorsForDashboard)
# 		else
# 			puts "User is logging in as: " +@role +"\n\n"

# 			dashboard(locatorsForDashboard)
# 		end
# 	end

# 	def dashboard(locatorsForDashboard)
# 		right_navbar=$browser.find_element(:xpath, locatorsForDashboard["ViewLeads"])
		
# 		$wait.until {$browser.find_element(:xpath, locatorsForDashboard["ViewLeads"])}
		
# 		if right_navbar.displayed?
# 			puts "Logged in successfully. User is in Dashboard screen.\n"
# 		else
# 			puts "Please check the application. Dashboard is not visible.\n"
# 		end
# 	end
# end

# class FillLeadDetails
# 	# include ChooseCreateLeadMenu
# 	# include Customer_Corporate
# 	# include AssetAndLoan
# 	# include Pricing
# 	# include CustomerVisit
# 	# include OtherDetails
	
# 	def CreateNewLead
# 		sleep 5
# 	    $browser.find_element(:link, "Pending Leads").click
# 	    sleep 10                        
# 	    puts "In pending leads section"
# 		sleep 5
# 		$browser.execute_script("document.getElementsByTagName('label')[1].children[0].click()")
# 	    sleep 7
# 	    puts "Opened the lead"
# 	    sleep 7
# 	    $browser.find_element(:xpath, "//li[@class = 'col-xs-2 ng-scope']//span[contains(text(), '2')]").click
# 	    sleep 2
# 		puts "In Asset & Loan milestone"
# 		sleep 5
# 		dropdown_product_category = $browser.find_element(:name, "input_select_categoryid")
# 		product_categories = dropdown_product_category.find_elements(:tag_name, "option")
# 		product_categories.each { |product_category| product_category.click if product_category.text == "Commercial Vehicle" || product_category.text == "Commercial Vehicle "} 
# 		sleep 1

# 		dropdown_product_subcategory = $browser.find_element(:name, "input_select_subcategoryid")
# 		product_subcategories = dropdown_product_subcategory.find_elements(:tag_name, "option")
# 		product_subcategories.each { |product_subcategory| product_subcategory.click if product_subcategory.text == "3WHEELER" || product_subcategory.text == "3WHEELER "} 
# 		sleep 1

# 		dropdown_manufacturer = $browser.find_element(:name, "input_select_manufacture")
# 		manufacturers = dropdown_manufacturer.find_elements(:tag_name, "option")
# 		manufacturers.each { |manufacturer| manufacturer.click if manufacturer.text == "ATUL" || manufacturer.text == "ATUL "} 
# 		sleep 1

# 		dropdown_make_list = $browser.find_element(:name, "input_select_make")
# 		make_list = dropdown_make_list.find_elements(:tag_name, "option")
# 		make_list.each { |make| make.click if make.text == "GEM" || make.text == "GEM "}
# 		sleep 1

# 		dropdown_model_list = $browser.find_element(:name, "input_select_modelid")
# 		model_list = dropdown_model_list.find_elements(:tag_name, "option")
# 		model_list.each { |model| model.click if model.text == "CARGO XL" || model.text == "CARGO XL "} 
# 		sleep 1

# 		dropdown_usage = $browser.find_element(:name, "input_vehicleusagenewtype")
# 		usage_list = dropdown_usage.find_elements(:tag_name, "option")
# 		usage_list.each { |usage| usage.click if usage.text == "Passenger" || usage.text == "Passenger "}
# 		sleep 1

# 		$browser.find_element(:name, "input_text_noofvehicle").clear()

# 		$browser.find_element(:name, "input_text_noofvehicle").send_keys("1")
# 		sleep 1

# 		$browser.find_element(:xpath, "//button[contains(text(), 'Save & Continue to Scheme & Loan')]").click
# 		sleep 5
# 		puts "Vehicle details saved successfully. Asset added.\n"

# 		proforma = 500000
# 	   	discount = 0
# 	   	loan_amount_requested = 300000
	              
# 	   	assetcost_after_discount = (proforma-discount)
# 	   	ltv_calculated = (loan_amount_requested.to_f/assetcost_after_discount.to_f)*100
# 	   	ltv_expected = "%.2f" % "#{ltv_calculated}"
# 	   	sleep 2
	 
# 	   	dropdown_sub_category = $browser.find_element(:name, "documentcategory")
# 	   	sub_category_list = dropdown_sub_category.find_elements(:tag_name, "option")
# 	   	sub_category_list.each { |sub_category| sub_category.click if sub_category.text == "GREEN CHANNEL" || sub_category.text == "GREEN CHANNEL "}
# 	   	sleep 2
	 
# 	   	$browser.find_element(:name, "input_proforma").send_keys(proforma)
# 	   	$browser.find_element(:name, "input_childata_discount").send_keys(discount)
# 	   	$browser.find_element(:name, "input_childata_amountrequested").send_keys(loan_amount_requested)
# 	   	$browser.find_element(:name, "input_childata_amountrequested").send_keys :tab
	              
# 	   	sleep 3
# 	   	dropdown_yearofmanufac = $browser.find_element(:name, "yearofmanufacture0")
# 	   	yearofmanufac_list = dropdown_yearofmanufac.find_elements(:tag_name, "option")
# 	   	yearofmanufac_list.each { |yearofmanufac| yearofmanufac.click if yearofmanufac.text == "2016" || yearofmanufac.text == "2016 "}
# 	   	sleep 2 
	  	 
# 	   	$browser.find_element(:name, "input_applicant_applicationformno").send_keys("1000000")
# 		$browser.find_element(:name, "input_applicant_applicationformno").send_keys :tab

# 	 	puts "assetcost_after_discount = #{assetcost_after_discount}"
# 	   	puts "ltv_expected = #{ltv_expected}%"

# 	   	ltv_displayed = $browser.find_element(:name, "vehicle_ltvRequested").attribute("value")
# 	   	puts "ltv displayed = #{ltv_displayed}%"
# 	    #there is another way of displaying the above line: puts “LTV Displayed”+ltv_displayed+”%”
	 
# 	    if (ltv_displayed == ltv_expected)
# 	        puts "******LTV matching******"
# 	    else
# 	     	puts "******LTV not matching******"
# 	    end
	              
# 	   sleep 5
# 	   	$browser.find_elements(:tag_name, "form-submit")[1].click
# 		sleep 7
# 		$browser.find_element(:class, "modal-btn-fixed").find_element(:class, "center-block").click
# 		sleep 5
# 		puts "Loan details saved successfully\n"
# 	end
# end

# locatorsForLogin = Hash["uname"=>"input_text_username","pwd"=>"input_text_password", "login_button"=>"btn-final"]

# locatorsForRoleSelection = Hash["selectRole_popUp"=>"//h4[contains(text(),'Select Role')]","roleDropdown"=>"roleselection" ,]

# locatorsForDashboard = Hash["ViewLeads"=>"//h4[contains(text(),'View Leads')]"]

# objSitLogin=SitLogin.new
# objSitLogin.sit_login(locatorsForLogin)
# objSitLogin.role_select(locatorsForRoleSelection,locatorsForDashboard)
# objFillLeadDetails=FillLeadDetails.new
# objFillLeadDetails.CreateNewLead