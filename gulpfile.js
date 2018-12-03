var gulp=require('gulp');

//3.压缩css文件并重命名 执行：gulp rename
var cssmin=require('gulp-cssmin');
var rename=require('gulp-rename');
gulp.task('cssmin1',function(){   
  return gulp.src('css/base.css')
             .pipe(cssmin())
             .pipe(rename('base.min.css'))
             .pipe(gulp.dest('dist/css'));
});
gulp.task('cssmin2',function(){
  return gulp.src('css/denglu.css')
             .pipe(cssmin())
             .pipe(rename('denglu.min.css'))
             .pipe(gulp.dest('dist/css'));
});
gulp.task('cssmin3',function(){
  return gulp.src('css/gouwuche.css')
             .pipe(cssmin())
             .pipe(rename('gouwuche.min.css'))
             .pipe(gulp.dest('dist/css'));
});
gulp.task('cssmin4',function(){
  return gulp.src('css/liebiao.css')
             .pipe(cssmin())
             .pipe(rename('liebiao.min.css'))
             .pipe(gulp.dest('dist/css'));
});
gulp.task('cssmin5',function(){
  return gulp.src('css/shouye.css')
             .pipe(cssmin())
             .pipe(rename('shouye.min.css'))
             .pipe(gulp.dest('dist/css'));
});
gulp.task('cssmin6',function(){
  return gulp.src('css/xiangqing.css')
             .pipe(cssmin())
             .pipe(rename('xiangqing.min.css'))
             .pipe(gulp.dest('dist/css'));
});
gulp.task('cssmin7',function(){
  return gulp.src('css/zhuce.css')
             .pipe(cssmin())
             .pipe(rename('zhuce.min.css'))
             .pipe(gulp.dest('dist/css'));
});

//6.压缩图片   执行：gulp imagemin
var imagemin=require('gulp-imagemin');
gulp.task('imagemin',function(){
  return gulp.src('img/*')
             .pipe(imagemin())
             .pipe(gulp.dest('dist/img'));
});

//4.压缩js并重命名   执行：gulp uglify
var uglify=require('gulp-uglify');
gulp.task('uglify',function(){
  return gulp.src('dist/js/es5/*.js')
             .pipe(uglify())
             .pipe(gulp.dest('dist/js'));
});
// es6-->es5
let babel = require('gulp-babel');

gulp.task('es6',function(){
    gulp.src('js/*.js')
    .pipe(babel({
        'presets':['es2015']
    }))
    .pipe(gulp.dest('dist/js/es5'))
});