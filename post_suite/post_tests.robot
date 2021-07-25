*** Settings ***
Library  OperatingSystem


*** Variables ***
${failure}  ================================== FAILURES ===================================

*** Test Cases ***
Test Case 1
    ${result}=  Run Post Pytest  post_suite//test_post_requests.py
    Log  ${result}
    Should Not Contain  ${result}  ${failure}

*** Keywords ***
Run Post Pytest
    [Arguments]  ${my_file}
    ${output}  Run  pytest ${my_file}
    [Return]  ${output}
