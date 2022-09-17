*** Settings ***

Library     MyLibrary
Variables       ../Variables/data.py
Variables       ../Variables/page_elements.py

*** Test Cases ***

RegisterUser
    OpenBrowser     ${url}      ${browser}
    ClickElement      ${signup_login_button}
    ElementIsVisibleAndContainText      ${new_user_signup_form}      New User Signup!
    TypeTextIntoField       ${user_and_email_locators}      ${user_and_email}
    ClickElement      ${signup_button}
    ElementIsVisibleAndContainText      ${enter_account_information}        ENTER ACCOUNT INFORMATION
    SelectRadioButton       title       ${title}
    InputPassword       ${password_field}       ${password}
    SelectFromLists      ${birth_data_locators}       ${birth_data}
    SelectCheckboxes    ${newsletter_checkboxes}
    TypeTextIntoField       ${personal_data_locators}       ${personal_data}
    SelectFromListByValue       ${country_list}     ${country}
    ClickElement    ${create_account_button}
    ElementIsVisibleAndContainText       ${account_created_element}      ACCOUNT CREATED!
    CloseBrowser
LoginuserWithCorrectEmailAndPassword
    OpenBrowser     ${url}      ${browser}
    ClickElement      ${signup_login_button}
    ElementIsVisibleAndContainText      ${login_to_your_account_form}       Login to your account
    TypeTextIntoField       ${login_user_email_locators}        ${correct_email_password}
    ClickElement        ${login_button}
    TextFromLocatorsIsEqual      Logged in as dtg190     ${logged_us_locator}
    CloseBrowser
LoginUserWithIncorrectEmailAndPassword
    OpenBrowser     ${url}      ${browser}
    ClickElement      ${signup_login_button}
    TypeTextIntoField       ${login_user_email_locators}        ${incorrect_user_email}
    ClickElement        ${login_button}
    ElementIsVisibleAndContainText      ${incorect_email_password}      Your email or password is incorrect!
    CloseBrowser
LogoutUser
    OpenBrowser     ${url}      ${browser}
    ClickElement      ${signup_login_button}
    ElementIsVisibleAndContainText      ${login_to_your_account_form}       Login to your account
    TypeTextIntoField       ${login_user_email_locators}        ${correct_email_password}
    ClickElement        ${login_button}
    TextFromLocatorsIsEqual      Logged in as dtg190     ${logged_us_locator}
    ClickElement    ${loggout_button}
    LocationShouldBe    https://www.automationexercise.com/login
    CloseBrowser
RegisterUserWithExistingEmail
    OpenBrowser     ${url}      ${browser}
    ClickElement      ${signup_login_button}
    ElementIsVisibleAndContainText      ${new_user_signup_form}      New User Signup!
    TypeTextIntoField       ${user_and_email_locators}      ${existing_name_and_email}
    ClickElement    ${signup_button}
    ElementIsVisibleAndContainText      ${email_address_exist}      Email Address already exist!
    CloseBrowser

















