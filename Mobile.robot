*** Settings ***
Documentation    Suite description
Library  DatabaseLibrary

*** Test Cases ***
Test title
        Connect To Database  pymysql  shared_qa7_ol01  shared_ro   Re@donLy   qamysqldb03.3gqa.satmetrix.com   3312
     @{k} =  Query select PRIMARY_IDFIER, ENTERPRISE_ID from core_party where PARTY_TYPE_CODE='ENTERPRISE' and PRIMARY_IDFIER='SEMANTRIAG'
    log  @{k}