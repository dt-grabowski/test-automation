
# --------------------------MAIN PAGE------------------------------------
url = "https://www.automationexercise.com/"
page_body = "//body"

    #BUTTONS
signup_login_button = "//a[@href = '/login']"

# --------------------------LOGIN PAGE-----------------------------------

    # ELEMENTS:
new_user_signup_form = "//div[@class = 'signup-form']/h2"

    # FIELDS:
name_field = "//input[@name = 'name']"
email_field = "//input[@data-qa= 'signup-email']"
name_and_email_locators = [name_field, email_field]

    #BUTTONS:
signup_button = "//button[@data-qa='signup-button']"


# -------------------------SIGNUP PAGE-----------------------------------
    # ELEMENTS:
enter_account_information = "//div/h2[@class = 'title text-center']/b"

    # FIELDS:
password_field = "//input[@type = 'password']"
first_name_field = "//input[@data-qa = 'first_name']"
last_name_field = "//input[@data-qa = 'last_name']"
company_field = "//input[@data-qa = 'company']"
adress_1_field = "//input[@data-qa = 'address']"
adress_2_field = "//input[@data-qa = 'address2']"
state_field = "//input[@data-qa = 'state']"
city_field = "//input[@data-qa = 'city']"
zip_code_field = "//input[@data-qa = 'zipcode']"
mobile_number_field = "//input[@data-qa = 'mobile_number']"

personal_data_locators = [first_name_field, last_name_field, company_field, adress_1_field,
                          adress_2_field, state_field, city_field, zip_code_field, mobile_number_field]

    #BUTTONS:
create_account_button = "//button[@data-qa = 'create-account']"

    #LISTS:
days_list = "//select[@id = 'days']"
months_list = "//select[@id = 'months']"
years_list = "//select[@id = 'years']"
country_list = "//select[@id = 'country']"

birth_data_locators = [days_list, months_list, years_list]

    #CHECKBOXES
newsletter_checkboxes = ["//input[@name = 'newsletter']",
                         "// input[ @ name = 'optin']"]

#--------------------ACCOUNT CREATED----------------------------------------------

account_created_element = "//h2[@data-qa = 'account-created']"







