*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Library    axs.py
Library    XML
#Suite Setup    opn_brwsr
#Suite Teardown    close_brwsr
# Test Setup    opn_brwsr
# Test Teardown    close_brwsr
*** Variables ***
${url}    https://www.docker.com/
${grl}    https://docs.google.com/forms/d/e/1FAIpQLSeI8_vYyaJgM7SJM4Y9AWfLq-tglWZh6yt7bEXEOJr_L-hV1A/viewform?formkey=dGx0b1ZrTnoyZDgtYXItMWVBdVlQQWc6MQ
#${browser}    headlesschrome
${browser}    chrome
${txcxt}    Get Started with Docker
${rct}    Machine Learning with TensorFlow on Google Cloud Platform
*** Test Cases ***

# Launch Docker Application
#     Open Browser  ${url}  ${browser}    options=add_experimental_option('excludeSwitches', ['enable-logging'])
#     Log To Console    Docker Page Opened
#     ${currurl} =    Get Location
#     Should Be Equal    ${currurl}    ${url}
#     #verfiy header links
#     Wait Until Page Contains Element    xpath://li[@class='logo']/a
#     Wait Until Page Contains Element    xpath://a[text()='Products'][1]
#     Wait Until Page Contains Element    xpath://a[text()='Developers'][1]
#     Wait Until Page Contains Element    xpath://a[text()='Pricing'][1]
#     Wait Until Page Contains Element    xpath://a[text()='Blog'][1]
#     Wait Until Page Contains Element    xpath://a[text()='About Us'][1]
#     Wait Until Page Contains Element    xpath://a[text()='Partners'][1]
    
#     #click on devloper links and click on getting started
#     Sleep    5s
#     Mouse Over    xpath://a[text()='Developers'][1]
#     Sleep    5s
#     Click Element    //a[text()='Getting started'][1]
#     Sleep    8s
#     ${currenttext}=    Get Text    xpath://h1[1]
#     Should Be Equal    ${currenttext}    ${txcxt}
#     Should Contain    ${currenttext}    with Docker
#     Should Be True    "with Docker" in """${txcxt}"""
#     Click Element    xpath://li/a[1]
#     Wait Until Page Contains    Develop faster.
#     Close All Browsers
    #((//h2[contains(.,'Accelerate')]/../../../div[2])//span)[3] remeber this
    #docker.com

#Docker Patnership Count
    #${text}=    Get Element Text    csx.xml    uurl
    #Open Browser    ${text}    ${browser}    options=add_experimental_option('excludeSwitches', ['enable-logging'])
    #Open Browser    ${url}    ${browser}    options=add_experimental_option('excludeSwitches', ['enable-logging'])
    # ${numberofpartnered}=    Get Element Count    xpath://div[@class='et_pb_row et_pb_row_13 ribbon']/div/div
    # Log To Console    ${numberofpartnered}
    # FOR    ${i}    IN RANGE    1    23    1
    #     ${counz}=    Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_13 ribbon']/div/div/span/picture/img)[${i}]    alt
    #     Log To Console    ${counz}    
    # END
    # ${a}=    Get Current Date
    # Log To Console    ${a}
    # ${b}=    Add Time To Date    ${a}    10 days
    # Log To Console    ${b}
    # ${c}=    Add Time To Date    ${a}    -10 days
    # Log To Console    ${c}
    # Execute Javascript   window.open('https://www.google.com');
    # @{xc}=    Get Window Titles
    # FOR    ${i}    IN    @{xc}
    #     Log To Console    ${i}
    # END
    
    # Sleep    5s
    # Click Element    xpath://*[@id="onetrust-close-btn-container"]/button
    # Sleep    4 s
    # Click Element    xpath://*[@id="footer"]/div[2]/div[1]/div/div/ul/li[2]/a/img
    # Sleep    10s
    # @{xc}=    Get Window Titles
    # FOR    ${i}    IN    @{xc}
    #     Log To Console   ${i}
    # END
    # Switch Window    ${xc}[1]
    # Sleep    4s
    # ${xcs}=    Retreat    Giridhar
    # Log To Console    ${xcs}
    # Close Window
    # ${text}=    Get Element Text    csx.XML    username
    # Log To Console    ${text}
    #twitter test

# input text
#     Open Browser    https://www.google.com    ${browser}    options=add_experimental_option('excludeSwitches', ['enable-logging'])
#     Click Element    xpath://input[@title="Search"]
#     Input Text    xpath://input[@title="Search"]    Helio Processor Launch Date
#     Click Element    name:btnK

# dropdown
#     Open Browser    https://techedtrainings.com/contact/   ${browser}    options=add_experimental_option('excludeSwitches', ['enable-logging'])
#     # Click Element    xpath:(//span[@role='presentation'])[2]
#     # Click Element    xpath:(//select[@name='menu-363']/option)[3]
#     Maximize Browser Window
#     Wait Until Page Contains Element    menu-363
#     Select From List By Index    menu-363    1
#     Sleep    4s
#     Select From List By Value    menu-363    Data Science
#     Sleep    4s

# checkbox test
#     Open Browser    ${grl}    ${browser}    options=add_experimental_option('excludeSwitches', ['enable-logging'])
#     Wait Until Element Is Visible    xpath:(//input[@type='checkbox'])[1]
    # Select Checkbox    xpath:(//input[@type='checkbox'])[1]
    # Unselect Checkbox    xpath:(//input[@type='checkbox'])[2]
    # Checkbox Should Be Selected    xpath:(//input[@type='checkbox'])[1]
    # Checkbox Should Not Be Selected    xpath:(//input[@type='checkbox'])[2]
    # Unselect Checkbox    xpath:(//input[@type='checkbox'])[1]
    # Select Checkbox    xpath:(//input[@type='checkbox'])[2]
    #for radio buttons its always click element only same.
# print all links
#     Open Browser    https://techedtrainings.com/courses  ${browser}    options=add_experimental_option('excludeSwitches', ['enable-logging'])
#     ${a}=    SeleniumLibrary.Get Element Count    xpath://a
#     Log To Console    ${a}
#     ${all_Links}=    Get WebElements    xpath://a
#     FOR    ${i}    IN    @{all_Links}
#         ${x}=    Get Text    ${i}
#         #Exit For Loop If    """${x}"""=="""${rct}"""
#         Log To Console    ${x}        
#     END
# test using tags and documentation
#     [Documentation]    Helios
#     [Tags]    Nancy
#     Log To Console    Helios
#     #robot -d Results -i "TagName" "path to robotfile/filename.robot"
# test using tags AEND documentation
#     [Documentation]    HETRA
#     [Tags]    Pelosi
#     Log To Console    Jakarta
#     #robot -d Results -i "TagName" "path to robotfile/filename.robot"
#     #robot -d Results -i "TagName" "path to robotfile/*.robot" to run all test cases with specified tag name in all robot files.
# dropdown leading to selection of options as checkbox
#     Open Browser    https://codepen.io/RobotsPlay/pres/pyNLdL  ${browser}    options=add_experimental_option('excludeSwitches', ['enable-logging'])
#     Maximize Browser Window
#     Wait Until Element Is Visible    id:result
#     Log To Console    Element Loaded
#     Select Frame    id:result
#     Sleep    3
#     Click Element    xpath://label[@class='dropdown-label']
#     Sleep    3
#     Click Element     xpath://input[@value='Selection 1']
#     Click Element     xpath://input[@value='Selection 2']
#     Click Element     xpath://input[@value='Selection 3']
#     Unselect Frame
# Test case 1
#     Open Browser    https://www.fleekitsolutions.com/    ${browser}    options=add_experimental_option('excludeSwitches', ['enable-logging'])
#     Maximize Browser Window
#     Page Should Contain Element    xpath://img[@class='normal']
#     Sleep    5s
#     ${a}=    Get Text    xpath://*[@id="nav-menu-item-16934"]/a/span[1]
#     Log To Console    ${a}
# asc
#     Go To    https://www.fleekitsolutions.com/
#     Page Should Contain Element    xpath://img[@class='normal']
#     Sleep    5s
#     ${a}=    Get Text    xpath://*[@id="nav-menu-item-16934"]/a/span[1]
#     Log To Console    ${a}
# bsc
#     Go To    https://techedtrainings.com/courses
#     ${a}=    SeleniumLibrary.Get Element Count    xpath://a
#     Log To Console    ${a}
#     ${all_Links}=    Get WebElements    xpath://a
#     FOR    ${i}    IN    @{all_Links}
#         ${x}=    Get Text    ${i}
#         Exit For Loop If    """${x}"""=="""${rct}"""
#         Log To Console    ${x}        
#     END
table scrape
    Open Browser    https://testautomationpractice.blogspot.com/    ${browser}    options=add_experimental_option('excludeSwitches', ['enable-logging'])
    ${rows}=     Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${columns}=    Get Element Count    xpath:(//table[@name='BookTable']/tbody/tr)[1]/th
    Log To Console    ${rows}
    Log To Console    ${columns}
    Table Column Should Contain    xpath://table[@name='BookTable']    1    Learn Java
    Table Row Should Contain    xpath://table[@name='BookTable']    3    500
    Table Cell Should Contain    xpath://table[@name='BookTable']    2    3    Selenium
    Table Header Should Contain    xpath://table[@name='BookTable']    BookName
file upload
    Open Browser    https://the-internet.herokuapp.com/upload    ${browser}    options=add_experimental_option('excludeSwitches', ['enable-logging'])
    Sleep    3s
    ${sxw}=    Retrr    selenium-screenshot-1.png
    Choose File    file-upload    ${sxw}
    Sleep    3s
    Click Element    file-submit
    Sleep    4s
*** Keywords ***
# twitter test
#     Sleep    5s
#     Click Element    xpath://*[@id="onetrust-close-btn-container"]/button
#     Sleep    4 s
#     Click Element    xpath://*[@id="footer"]/div[2]/div[1]/div/div/ul/li[2]/a/img
#     Sleep    10s
#     @{xc}=    Get Window Titles
#     FOR    ${i}    IN    @{xc}
#         Log To Console   ${i}
#     END
#     Switch Window    ${xc}[1]
#     Sleep    4s
#     ${xcs}=    Retreat    Giridhar
#     Log To Console    ${xcs}
#     Close Window
# opn_brwsr
#     Open Browser    about:blank  ${browser}    options=add_experimental_option('excludeSwitches', ['enable-logging'])
#     Maximize Browser Window
# close_brwsr
#     Close All Browsers