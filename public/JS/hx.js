function hide() {
    var myClasses = document.querySelectorAll('.hide'),
        i = 0,
        l = myClasses.length;

    for (i; i < l; i++) {
        myClasses[i].style.display = 'none';
         }
}