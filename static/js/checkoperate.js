var lastTime = new Date().getTime();
var currenTime = new Date().getTime();
var timeout = 30*60*1000;

$(function () {
    window.onmousemove = function () {
        lastTime = new Date().getTime();
    }
})


function  testTime() {
    currenTime = new Date().getTime();
    if (currenTime - lastTime > timeout){
        var loginStatus = $("span").hasClass('no-login');
        // console.log(loginStatus)
        if (loginStatus == false){
            window.location.href = '/login_out/'
        }
        // window.location.href = '/login_out/'
    }
}

window.setInterval(testTime,1000)