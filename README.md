# View Components Demo

Based on [Rails Base](https://github.com/fs/rails-base)

## Scripts

* `bin/setup` - setup required gems and migrate db if needed
* `bin/quality` - runs rubocop, brakeman, rails_best_practices and bundle-audit for the app
* `bin/test` - runs all tests and quality checks
* `bin/server` - to run server locally

## Getting Started

### Prepare dependencies

Some gems have native extensions.
You should have GCC installed on your development machine.
Dependencies will be automatically installed via setup script.

* `phantomjs` - to run Javascript unit tests
* `graphviz` - to generate Entity-Relationship Diagram
* `node` - JavaScript runtime

### Bootstrap application

1. Clone application

   ```bash
   git clone git://github.com/RamilyaNigmatullina/view-components-demo.git
   ```

2. Run setup script

  ```bash
  bin/setup
  ```

3. Run test and quality suits to make sure all dependencies are satisfied and applications works correctly before making changes.

  ```bash
  bin/test
  ```

4. Run app

  ```bash
  bin/server
  ```
