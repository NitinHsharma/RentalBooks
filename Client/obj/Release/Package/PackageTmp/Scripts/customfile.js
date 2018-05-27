function setCookie(key, value, time) {
    if (key === undefined || value === undefined) {
        return;
    }
    var expires = new Date();
    expires.setTime(expires.getTime() + time);
    document.cookie = key + "=" + value + ";expires=" + expires.toUTCString();

}