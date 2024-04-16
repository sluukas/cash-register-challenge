# Solution to Amenitiz Technical Challenge

This project is a command-line application developed as a solution to the Amenitiz technical challenge. It simulates a cash register that allows adding products to a cart and computes the total price, applying specific discounts based on predefined rules.

## Ruby versions
3.1.2

## Objective

The goal is to build an application that:

- Has a UI (can be a simple CLI) for adding products to a cart.
- Computes the total price, accommodating special pricing rules.
- Is user-friendly while maintaining simplicity, readability, maintainability, and extensibility.

## How to run

Ensure Ruby 3.1.2 (or greater) is installed on your system. Then, follow these steps:

1. Clone the repository to your local machine.
2. Navigate to the root folder of the project.
3. Run `bundle install` to install required gems.
4. Start the application with `ruby lib/cash_register.rb`.
5. Follow the on-screen instructions to interact with the cash register:
   - Enter a product code to add the corresponding product to the cart. (e.g., `GR1`, `SR1`, `CF1`)
   - Submit an empty line to calculate and display the total price, concluding the process.


## How to test
- Run `bundle exec rspec` in the root folder
