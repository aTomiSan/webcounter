*** Settings ***
Resource  resource.robot 
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser 

*** Test Cases ***
When value is set the value is updated correctly 
    Go To  ${HOME_URL}
    Input Text  Value  10
    Click Button  Set_value 
    Page Should Contain  nappia painettu 10 kertaa