* Settings *
Documentation       thise suite will handle valid credential
Resource    ../Resource/CommonFunctionality.resource
TeD:\OrangeHR-Automation\Test_Data\ValidCredential.xlsxst Setup      Launch Browser
Test Teardown       Close Browser
Test Template   valid Credential Template

Library   DataDriver    file=../test_data/ValidCredential.xlsx   sheet_name=valid Credential
* Test Cases *
Tc1

* Keywords *
valid Credential Template
    [Arguments]     ${username}     ${password}      ${expected_error}
    Input Text    id=txtUsername    ${username}
    Input Text    id=txtPassword     ${password}
    Click Element    id=btnLogin
    Page Should Contain    ${expected_error}

