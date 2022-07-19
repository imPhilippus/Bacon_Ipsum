*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

Resource   ../configs/default_configs.resource
Resource   ../resources/bacon_ipsum.resource


Test Setup     Open Browser    ${URL}    ${BROWSER}
Test Teardown  Close Browser

*** Test Cases ***
 Scenario 01: minimum paragraphs / start with bacon ipsum
   [Tags]    Minimum_Paras

    Leave Paragraph Input Empty

    Select 'Meat and Filler' Option

    Unselect Start With Bacon Ipsum

    Submit

    Page Should Contain Element    ${PARAGRAPH_CONTAINER}

 Scenario 02: maximum paragraphs
   [Tags]    99 

    Input 99 Paragraphs

    Submit

    Page Should Contain Element    //p[99]

 Scenario 03: 20 paragraph / make it spicy
   [Tags]    spicy_20

    Input 20 Paragraphs
    
    Checkbox Should Be Selected    ${START_W_LOREM_CHECKBOX}

    Select Checkbox                ${SPICY_CHECKBOX}
    
    Submit

    Page Should Contain    Spicy jalapeno bacon ipsum dolor amet