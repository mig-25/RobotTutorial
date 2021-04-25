*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
Handling Dropdowns and Listboxes
    open browser    ${url}
    #maximize browser window

    #set selenium speed    1seconds

    DropdownTest
    ListboxTestMultiChoice
    sleep    2

    close browser


*** Keywords ***
DropdownTest
    # Selcting dropdowns, pass in name of the dropdown, then the value
    # You can select from label, value or index
    select from list by label    continents     Australia
    sleep    2
    # Selcting dropdowns, pass in name of the dropdown, then the index, start with 0
    select from list by index    continents     6

    # Selecting dropdowns via name and value, the value can be provided in the option tag
    # Example:
    #<select id="cars" name="cars">
                    #    <option value="volvo">Volvo XC90</option>
                    #    <option value="saab">Saab 95</option>
                    #    <option value="mercedes">Mercedes SLK</option>
                    #    <option value="audi">Audi TT</option>
                    #
                    #</select>
    #select from list by value    cars     saab

ListboxTestMultiChoice
    # Selcting listboxes, sames syntax as dropdown, value, index or value
    select from list by label    selenium_commands      Switch Commands
    select from list by label    selenium_commands      WebElement Commands
    sleep    2
    unselect from list by label    selenium_commands        Switch Commands


