import { should } from "chai";

export class TodoPage {


    navigateToHome() {
        cy
            .visit('https://example.cypress.io/todo')
            .clearCookies()
            
    }

    navigateToPage(url) {
        cy
            .visit(url)
    }

    addTodo(newTodoText) {
        cy
            .get('[data-test=new-todo]')
            .type(`${newTodoText}{enter}`)
    }

    validateTodoCount(expectedLength) {
        if (expectedLength > 0) {
            cy
                .get('.todo-list li')
                .should('have.length', expectedLength)
        }
        else {
            cy
            .get('.todo-list li')
            .should('not.exist')
        }
    }

    validateTodoText(toDoIndex, expectedTodoText) {
        cy
            .get('.todo-list li')
            .eq(toDoIndex - 1)
            .should('have.text', expectedTodoText)
    }

    checkTodo(todoText) {
        cy.contains(todoText)
            .parent()
            .find('input[type=checkbox]')
            .check()
    }

    check(toDoText) {
        cy.contains('a', toDoText)
        .find('input[type=checkbox]')
        .check()
            
    }

    verifyTodoIsChecked(todoText) {
        cy.contains(todoText)
            .parents('li')
            .should('have.class', 'completed')
    }

    clickAnchorByText(anchorText) {
        cy
            .get(`a:contains("${anchorText}")`)
            .should('have.length', 1)
            .click()
    }

    clickButtonByText(buttonText) {
        cy
            .get(`button:contains("${buttonText}")`)
            .should('have.length', 1)
            .click()
    }

    verifyTextExistence(text, doesExist = true) {
        if (doesExist) {
            cy
                .contains(text)
                .should('exist')
        }
        else {
            cy
                .contains(text)
                .should('not.exist')
        }

    }

    verifyTextExistence2(xpath, doesExist = true) {
        if (doesExist) {
            cy
                .contains(xpath)
                .should('exist')
        }
        else {
            cy
                .contains(xpath)
                .should('not.exist')
        }
    }

    scrollToElement(area) {
        cy
        .scrollTo(area)
    }
}
