*** Settings ***
Library  ExcelLibrary

*** Test Cases ***
Create Excel
        Create Excel Document  Data.xlsx
        Write Excel Cell  1  1  test  Sheet
        Save Excel Document  Data.xlsx