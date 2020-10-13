## THE CHALLENGE

Build a checkout system with the following functionality:

- Load a list of products from a file.
- List product details to the user.
- Add products to a Shopping Cart.
- Calculate and display the total cost.

You can find the list of available products in the attached file `products.json`

```
Products in Shopping Cart:
1. Jockey Wheels - Orange - $15.39
2. Chain Ring 146mm - $65.95
3. Carbon Brake Pads - $92.00
4. Front Derailleur - 34.9mm - $31.22

TOTAL: $163.65
```

## THE SOLUTION

This is a CLI (Command Line Input) checkout system app written in Ruby, using the MVC framework.

I opted to load the products into a Catalogue class to act as a repository of all products. I designed the Product class separately to allow for flexibility to create instances of Product outside of the given json file. The Shopping Cart class acts as another repository for products that can be checked out.

## SETUP

To start, you'll need:

- Ruby 2.6.6
- Bundler gem
- RSpec 3.9

For bundler gem run:

    gem install bundler

To install dependencies run:

    bundle install

# EXECUTE SOLUTION

This is a CLI app that can be run by entering the following command in your terminal:

    ruby lib/app.rb

When first run, you'll be prompted to choose what you'd like to do by entering the corresponding number to the action. This is how all actions are chosen. When you choose 'checkout,' the app will exit.

# TEST

Rspec tests can be run via terminal command:

    rspec

OR

    rake

Enjoy! :)
