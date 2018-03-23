*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Switch Window
        Open Browser  http://naukri.com  gc
        Select window  title:Amazon
        Maximize Browser Window
        Close Window
