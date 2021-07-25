*** Settings ***
Library  OperatingSystem


*** Variables ***
${failure}  ================================== FAILURES ===================================

*** Test Cases ***
Test Case 1
    ${result}=  Run Put Pytest  put_suite//test_put_requests.py
    Log  ${result}
    Should Not Contain  ${result}  ${failure}

*** Keywords ***
Run Put Pytest
    [Arguments]  ${my_file}
    ${output}  Run  pytest ${my_file}
    [Return]  ${output}
