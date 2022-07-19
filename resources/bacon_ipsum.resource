*** Settings ***
Library    SeleniumLibrary

Resource   ../page_objects/home_page_objects.resource

*** Keywords ***

Leave Paragraph Input Empty
    Input Text                      ${PARAGRAPH_TEXT_FIELD}  0

Input 20 Paragraphs
    Input Text                      ${PARAGRAPH_TEXT_FIELD}  20

Unselect Start With Bacon Ipsum
    Unselect Checkbox               ${START_W_LOREM_CHECKBOX}
    Checkbox Should Not Be Selected  ${START_W_LOREM_CHECKBOX}

Select 'All Meat' Option
    Click Element                   ${ALL_MEAT_OPT}

Input Two Paragraph
    Input Text                      ${PARAGRAPH_TEXT_FIELD}  2

Select Start With 'Bacon Ipsum' Option
    Select Checkbox                 ${START_W_LOREM_CHECKBOX}
    Checkbox Should Be Selected     ${START_W_LOREM_CHECKBOX}

Select 'Make It Spicy' Option
    Select Checkbox                 ${SPICY_CHECKBOX}

Select 'Meat and Filler' Option
    Click Element                   ${MEAT_AND_FILLER_OPT}
    # Checkbox Should Be Selected     ${MEAT_AND_FILLER_OPT}

Submit
    Click Button                    ${SUBMIT_BUTTON}

Input 99 Paragraphs
    Input Text                      ${PARAGRAPH_TEXT_FIELD}  99