*** Settings ***
Library  ExcelLibrary

*** Test Cases ***
Create Excel
        Given Create Excel Document  Data.xlsx
        When Write Excel Cell  1  1  test  Sheet
        And Save Excel Document  Data.xlsx