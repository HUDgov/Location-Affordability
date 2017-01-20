function toggle(id){
    switch (id) {
        case 1:
            document.getElementById("homesectiontoolB").className = "none";
            document.getElementById("homesectiontoolC").className = "none";
            document.getElementById("homesectiontoolA").className = "";
            break;
        case 2:
            document.getElementById("homesectiontoolA").className = "none";
            document.getElementById("homesectiontoolC").className = "none";
            document.getElementById("homesectiontoolB").className = "";
            break;
        case 3:
            document.getElementById("homesectiontoolA").className = "none";
            document.getElementById("homesectiontoolB").className = "none";
            document.getElementById("homesectiontoolC").className = "";
            break;
    }
}


function More(id) {
    var A = document.getElementById("more" + id + 'a');
    var T = document.getElementById("more" + id);

    if (A.innerHTML == "more") {
        T.className = "";
        A.innerHTML = "less";
    } else {
        T.className = "none";
        A.innerHTML = "more";
    }
}