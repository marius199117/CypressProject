import { Then } from "cypress-cucumber-preprocessor/steps";

Then(/^I See "(.*?)" In The Title$/, title => {
  cy.title().should("include", title);
});