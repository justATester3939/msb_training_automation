*** Settings ***
Resource    ../2_elements/guru_login_page.robot
Library     SeleniumLibrary

*** Keywords ***
Mở trang web bằng trình duyệt
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}

Login guru99 thành công
    [Arguments]    ${email}    ${password}
    Wait Until Element Is Visible    ${inp_email}
    Input Text    ${inp_email}    ${email}
    Input Password    ${ipn_password}    ${password}
    Click Element    ${btn_login}

Kiểm tra màn hình hiển thị chữ
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h3[contains(text(), "${text}")]    10s 

