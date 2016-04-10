(function() {
    "use strict";
    var gulp = require('gulp'); // jshint ignore:line
    var coffee = require('gulp-coffee'); // jshint ignore:line
    var util = require('gulp-util');  // jshint ignore:line
    var markdox = require('gulp-markdox'); // jshint ignore:line
    var concat = require('gulp-concat'); // jshint ignore:line
    var cucumber = require('gulp-cucumber'); // jshint ignore:line
    var codo = require('gulp-codo'); // jshint ignore:line


    gulp.task('default', function() {
        // TODO(augustin) add some default stuff
    });

    gulp.task('coffee', function() {
        gulp.src('./lib/coffee/*.coffee')
            .pipe(coffee({bare: true}).on('error', util.log))
            .pipe(gulp.dest('./lib/js/'));
    });

    gulp.task('coffeeGherkinTest', function() {
        gulp.src('./lib/coffee/test/features/step_definitions/*.coffee')
            .pipe(coffee({bare: true}).on('error', util.log))
            .pipe(gulp.dest('./lib/js/test/features/step_definitions/'));
    });

    gulp.task('doc-markdox', function() {
        gulp.src("./lib/coffee/*.coffee")
            .pipe(markdox()).on('error', util.log)
            .pipe(concat("doc.md")).on('error', util.log)
            .pipe(gulp.dest("./doc-markdox/"));
    });

    gulp.task('doc-codo', function() {
        gulp.src("./lib/coffee/*.coffee", {read: false})
            .pipe(codo({
                name: 'Soundex',
                title: 'Soundex',
                readme: './README.md'
            })).on('error', util.log);
    });

    gulp.task('cucumber', function() {
        gulp.src('./lib/js/test/features/*.feature')
            .pipe(cucumber({
                'steps': './lib/js/test/features/step_definitions/*.js',
                'format': 'summary'
            }));
    });

}).call(this);

