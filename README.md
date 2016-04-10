Gherkin demo for CoffeeScript
========

[![Join the chat at https://gitter.im/AndreasAugustin/Gherkin-Demos](https://badges.gitter.im/AndreasAugustin/Gherkin-Demos.svg)](https://gitter.im/AndreasAugustin/Gherkin-Demos?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[![Build Status](https://travis-ci.org/AndreasAugustin/Gherkin-Demos-coffee.svg?branch=master)](https://travis-ci.org/AndreasAugustin/Gherkin-Demos-coffee)

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
    $ git clone https://github.com/AndreasAugustin/Gherkin-Demos-coffee.git
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

