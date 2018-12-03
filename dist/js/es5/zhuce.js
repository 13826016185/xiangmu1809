'use strict';

document.addEventListener('DOMContentLoaded', function () {

    var username = document.querySelector('#phone');
    var usninf = document.querySelector('#inf1');
    var isok = false;
    var btn = document.querySelector('#btn');
    var psw = document.querySelector('#password');

    var yanzhen = document.querySelector('#inf4');
    var yanzhen1 = document.querySelector('#confirm4');

    // 验证码部分
    yanzhen.onclick = function () {
        update();
    };

    update();

    function update() {
        var num = randomNum();
        yanzhen.innerHTML = num;
        var color = randomColor(16);
        yanzhen.style.background = color;
    }

    var num = '';

    function randomNum() {
        num = '';
        var str = '0123456789zxcvbnmasdfghjklqwertyuiopZXCVBNMASDFGHJKLQWERTYUIOP';

        for (var i = 0; i < 4; i++) {
            num += str.charAt(parseInt(Math.random() * str.length));
        }

        return num;
    }

    console.log(yanzhen.innerHTML);

    // 正则部分：


    var inf1 = document.querySelector('#inf1');
    var inf2 = document.querySelector('#inf2');
    var inf3 = document.querySelector('#inf3');
    var phone = document.querySelector('#phone');

    var ok1 = false;
    phone.onblur = function () {

        var val = phone.value;
        var str = checkReg.trim(val);
        if (str && checkReg.tel(str)) {
            inf1.innerHTML = '正确';
            ok1 = true;
        } else {
            inf1.innerHTML = '不正确';
        }
    };

    var password = document.querySelector('#password');

    var ok2 = false;
    password.onblur = function () {

        var val = password.value;
        var str = checkReg.trim(val);
        if (str && checkReg.psweasy(str)) {
            inf2.innerHTML = '正确';
            ok2 = true;
        } else {
            inf2.innerHTML = '不正确';
        }
    };

    var confirm_pwd = document.querySelector('#confirm3');

    var ok3 = false;
    confirm_pwd.onblur = function () {

        var val = confirm_pwd.value;
        var str = checkReg.trim(val);
        if (str && checkReg.pwwagain(password.value, confirm_pwd.value)) {
            inf3.innerHTML = '正确';
            ok3 = true;
        } else {
            inf3.innerHTML = '不正确';
        }
    };

    var confirm_p = document.querySelector('#confirm4');

    var ok4 = false;
    confirm_p.onblur = function () {

        var val = confirm_p.value;
        var str = yanzhen.innerHTML;
        if (str == val) {
            alert('验证码正确');
            ok4 = true;
        } else {
            alert('验证码不正确');
        }
    };

    // 这个是数据库部分。注册的。
    username.onblur = function () {
        var val = username.value.trim();
        var xhr = new XMLHttpRequest();
        var url = '../api/checkname.php?username=' + val + '&time=' + new Date();
        xhr.open('GET', url, true);
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var str = xhr.responseText;
                console.log(str);
                if (str == '0') {
                    usninf.innerHTML = '用户名不可用';
                    usninf.style.color = 'red';
                } else {

                    usninf.innerHTML = '用户名可用';
                    usninf.style.color = 'green';
                    isok = true;
                }
            }
        };
    };

    btn.onclick = function () {

        var valName = username.value.trim();
        var valPsw = psw.value.trim();

        if (isok) {
            var xhr = new XMLHttpRequest();

            xhr.open('POST', '../api/reg.php', true);

            xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
            var data = 'name=' + valName + '&psw=' + valPsw;
            xhr.send(data);

            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var str = xhr.responseText;
                    console.log(str);

                    if (str == 'yes') {
                        alert('是否跳转登录页？');
                        location.href = 'denglu.html';
                    } else {
                        alert('注册失败');
                    }
                }
            };
        }
    };
});