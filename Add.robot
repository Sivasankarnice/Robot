*** Settings ***
Resource  Addsupport.robot


*** Test Cases ***
Addition
        ${s}  Add  1  2
        Log  ${s}
Subtraction
        ${s}  Sub  1  2
        Log  ${s}

