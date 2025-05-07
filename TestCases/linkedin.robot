*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
GoogleSearchTest
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window

    # Eğer "Çerezleri kabul et" butonu varsa tıkla (görünürse)
    Run Keyword And Ignore Error    Click Element    xpath=//div[contains(text(), 'Kabul et') or contains(text(), 'Accept')]

    # Arama kutusuna yaz
    Input Text    name:q    LinkedIn

    # Enter tuşuna basarak arama yap
    Press Keys    name:q    \\13

    # Sonuçlardan LinkedIn başlığının gelmesini bekle
    Wait Until Element Is Visible    xpath=//h3[contains(text(), 'LinkedIn')]    timeout=10s

    # Tarayıcı kapanmasın diye uzun bir bekleme koy
    Sleep    99999s
