*** Settings ***
Resource  Addsupport.robot
Variables  test.yaml

*** Test Cases ***
Addition
        ${s}  Add  ${b}  &{d}[e]
        Log  ${s}
Subtraction
        ${s}  Sub  1  2
        Log  ${s}
