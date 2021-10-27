

document.querySelector('#btnSubmit').onclick = function (e) {
    let Y = document.querySelector('#y_text').value;
    Y=Y.replace(",",".")
    let R = document.querySelector("#r_text").value;
    let X = document.querySelector('[name="xCheckbox"]:checked').value



    if (checkY(Y)) {
        if (checkR(R)) {
            if (checkX()) {
                function getCoordinates(){
                    val_x = convert(X,R)
                    val_y = convert((-Y),R)
                    let dot = document.getElementById("dot")
                    dot.setAttribute("cx", val_x)
                    dot.setAttribute("cy", val_y)
                }
                getCoordinates()
                setVisible()
                $.ajax({
                    type: "POST",
                    url: "ControllerServlet",
                    data: "x=" + X + "&y=" + Y + "&r=" + R,
                    success:function (data){

                            document.getElementById("Answer").innerHTML = data
                        // document.location.reload()
                        // response => response.text()
                        // response => document.getElementById("Answer").innerHTML = response

                    }})


            }
        }
    }

}
document.querySelector('#reset').onclick = function (e) {
    e.preventDefault();
    $.ajax({
        type: "DELETE",
        url:"ControllerServlet",
        success:
        document.location.reload()
    })
}
document.querySelector("#coord").onclick = click;
function click(e){
    let svg = document.getElementById("svg")
    let svg_r = svg.getBoundingClientRect()
    //alert(e.clientX+ " "+ e.clientY)
    let x = e.clientX-svg_r.left
    let y = e.clientY-svg_r.top
    let r = document.querySelector("#r_text").value;
    let val_x = ((x-200)/160)*r
    let val_y = ((200-y)/160)*r
    if (checkX(val_x)){
        if (checkR(r)){
            if (checkY(val_y)){
                $.ajax({
                    type: "POST",
                    url: "ControllerServlet",
                    data: "x=" + val_x + "&y=" + val_y + "&r=" + r,
                    success:function (data){

                        document.getElementById("Answer").innerHTML = data
                        // document.location.reload()
                        // response => response.text()
                        // response => document.getElementById("Answer").innerHTML = response

                    }})


            }
        }
    }
    setVisible()
    dot.setAttribute("cx", x)
    dot.setAttribute("cy", y)


}
function setVisible(){
    let dot = document.getElementById("dot")
    dot.setAttribute("visibility","visible")
}
function setHiden(){
    let dot = document.getElementById("dot")
    dot.setAttribute("visibility","hidden")
}

function convert(val,R){
    return 200+((val)/R)*160
}

function checkY(Y) {

    if (Y == null || Y.length == 0) {
        alert("write something in the field Y!");
        return false
    }
    else if (parseFloat(Y) < -3) {
        alert("Y cant be less then -3");
        return false
    }
    else if (parseFloat(Y) > 3) {
        alert("Y cant be higher then 3");
        return false
    }
    else if (isNaN(Y)) {
        alert("Y must be a number");
        return false;
    }
    else {
        return true
    }
}

function checkR(R) {

    if (R == null || R.length == 0) {
        alert("write something in the field R!");
        return false
    }
    else if (parseFloat(R) < 1) {
        alert("R cant be less then 1");
        return false
    }
    else if (parseFloat(R) > 4) {
        alert("R cant be higher then 4");
        return false
    }
    else if (isNaN(R)) {
        alert("R must be a number");
        return false;
    }
    else {
        return true
    }
}

function checkX() {
    try {
        let i = document.querySelectorAll("input[type=checkbox]:checked").length;
        if (i > 1) {
            alert("you can choose only one option")
            return false;
        } else {

            return true;
        }

    } catch (err) {
        alert("you need to choose something in X value")
        return false
    }
}
