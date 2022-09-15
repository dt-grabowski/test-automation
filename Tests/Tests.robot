*** Settings ***

Library     MyLibrary
Variables       ../Variables/data.py
Variables       ../Variables/page_elements.py

*** Test Cases ***

User
    OpenBrowser     ${url}      ${browser}
    ClickElement      ${signup_login_button}
    ElementIsVisibleAndContainText      ${new_user_signup_form}      New User Signup!
    TypeTextIntoField       ${name_and_email_locators}      ${name_and_email}
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










