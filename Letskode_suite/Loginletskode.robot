*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredentialTest
    Log To Console    ${OUTPUT_DIR}${/}driver  
    Append To Environment Variable    Path     ${OUTPUT_DIR}${/}driver
    Open Browser    url=https://letskodeit.teachable.com/p/practice   browser=ff    
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    id=bmwradio
    Click Element    id=carselect
    Click Element   //option[text()='Benz']
    Click Element   //option[text()='Orange']
    Click Element   //input[@id='hondacheck']
    Click Element    id=openwindow  
    ${actualtitle}    Get Title
    Log To Console    ${actualtitle}    
    Log    ${actualtitle}   
    Sleep    5s 
    Click Element    id=opentab
    ${title}    Get Title
    Log To Console    ${title}    
    Log    ${title}
    Switch Window           
    Click Element    id=mousehover
    Sleep    5s
    Click Element    //a[text()='Top']  
    Select Frame       //iframe[@id='courses-iframe']
    Input Text    //input[@id='search-courses']    Learn Python 3 from Scratch
    Click Element   //button[@id='search-course-button']
    Click Element    class=course-listing-extra-info
    
    