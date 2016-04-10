Gherkin demo for CoffeeScript
========

[![Join the chat at https://gitter.im/AndreasAugustin/Gherkin-Demos](https://badges.gitter.im/AndreasAugustin/Gherkin-Demos.svg)](https://gitter.im/AndreasAugustin/Gherkin-Demos?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

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

