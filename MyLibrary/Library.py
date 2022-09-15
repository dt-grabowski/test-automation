from SeleniumLibrary.base.librarycomponent import LibraryComponent
from SeleniumLibrary import SeleniumLibrary
from SeleniumLibrary.keywords import ElementKeywords, BrowserManagementKeywords, WaitingKeywords, FormElementKeywords, SelectElementKeywords
from robot.api.deco import keyword
from Variables import page_elements as pe

class Library(LibraryComponent):
    def __init__(self: "Library", ctx: SeleniumLibrary):
        LibraryComponent.__init__(self, ctx)
        self.ek = ElementKeywords(ctx)
        self.bmk = BrowserManagementKeywords(ctx)
        self.wk = WaitingKeywords(ctx)
        self.fek = FormElementKeywords(ctx)
        self.sek = SelectElementKeywords(ctx)

    @keyword
    def open_browser(self, url, browser):
        self.bmk.open_browser(url, browser)
        self.ek.element_should_be_visible(pe.page_body)

    @keyword
    def element_is_visible_and_contain_text(self, locator: str, text: str):
        self.ek.element_should_be_visible(locator)
        self.ek.element_should_contain(locator, text)

    @keyword
    def type_text_into_field(self, locators_list: list, text: list):
        for i in range(len(locators_list)):
            self.fek.input_text(locators_list[i], text[i])

    @keyword
    def select_from_lists(self, list_locator: list, list_values: list):
        for i in range(len(list_locator)):
            self.sek.select_from_list_by_value(list_locator[i], list_values[i])

    @keyword
    def select_checkboxes(self, checkboxes=[]):
        for i in range(len(checkboxes)):
            self.fek.select_checkbox(checkboxes[i])

    @keyword
    def select_radio_buttons(self, radio_buttons_locators: list, values: list):
        for i in range(len(radio_buttons_locators)):
            self.fek.select_radio_button(group_name=values[i], value=values[i])





