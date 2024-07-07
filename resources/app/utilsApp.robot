*** Settings ***
Resource    ../po/utils.robot

*** Keywords ***
start the browser
     Run Keyword If    '${is_local}'== 'False'    Run Keywords    utils.create remote browser
   ...    ELSE    utils.create browser

create browser
   utils.create browser

close the browser
    utils.close the browser

press enter
    utils.press enter

debugger
    utils.debugger
