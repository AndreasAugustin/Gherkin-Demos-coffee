Gherkin demo for CoffeeScript
========

# Requires
- nodejs
- node packages (listed in package.json)
    - gulp
    - gulp-codo
    - gulp-coffee
    - gulp-concat
    - gulp-cucumber
    - gulp-markdox
    - gulp-util

# Project setup
    $ git clone https://github.com/AndreasAugustin/Gherkin-Demos.git
    $ cd Gherkin-Demos-coffee
    $ npm install
    
# Run gulp
    $ gulp coffee
    $ gulp coffeeGherkinTest
    
# Run tests (Step run gulp needs to be perfomred before)
    $ gulp cucumber
or
    $ cucumberjs lib/js/test/features/
    
# Build documentation
    $ gulp doc

