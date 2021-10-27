<!DOCTYPE html>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%--<jsp:useBean id="MyBean" beanName="MyBean" class="lab.MyBean" type="lab.MyBean" scope="session"/>--%>
<%@ page import="lab.Result" %>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="description" content="Web2 Ryabikin Aleksey P3215 ">
    <meta name="author" content="Ryabikin Aleksey P3215">
    <link rel="shortcut icon" href="img/icon.png" type="image/x-icon">
    <link rel="stylesheet" href="style/style.css">
    <title>Lab2 Web</title>
</head>
<header align="center">
    <table>
        <tr width=100%>
            <td id="headIcon"><img src="img/favicon.png" alt="IT logo"></td>
            <td>
                <h2>Lab №2 </h2>
                <h3>Ryabikin Aleksey P3215 <br> 15317</h3>
            </td>
        </tr>
    </table>
</header>

<body>
    <table>
        <tr>
            <td class="linebloc">X</td>
            <td class="linebloc">Y</td>
            <td class="linebloc">R</td>
            <!-- svg-->

        </tr>
        <tr>
             
            <!-- body X-->
            <td class="linebloc">
                <input type="checkbox" id="xCheckbox-4" value="-4" name="xCheckbox" checked> <label for="xCheckbox-4">-4</label>
                <input type="checkbox" id="xCheckbox-3" value="-3" name="xCheckbox"> <label for="xCheckbox-3">-3</label>
                <input type="checkbox" id="xCheckbox-2" value="-2" name="xCheckbox"> <label for="xCheckbox-2">-2</label>
                <input type="checkbox" id="xCheckbox-1" value="-1" name="xCheckbox"> <label for="xCheckbox-1">-1</label>
                <input type="checkbox" id="xCheckbox0" value="0" name="xCheckbox"> <label for="xCheckbox0">0</label>
                <br>
                <input type="checkbox" id="xCheckbox1" value="1" name="xCheckbox"> <label for="xCheckbox1">1</label>
                <input type="checkbox" id="xCheckbox2" value="2" name="xCheckbox"> <label for="xCheckbox2">2</label>
                <input type="checkbox" id="xCheckbox3" value="3" name="xCheckbox"> <label for="xCheckbox3">3</label>
                <input type="checkbox" id="xCheckbox4" value="4" name="xCheckbox"> <label for="xCheckbox4">4</label>

                 
                <!-- body y-->
            <td class="linebloc"> <input type="Y" aria-label="Y" id="y_text" placeholder="no value {-3;3}"></td>
             
            <!-- body R-->
            <td class="linebloc"> <input type="R" aria-label="R" id="r_text" placeholder="no value {1;4}"></td>

        </tr>

        <tr>
            <td colspan="3">

            </td>
        </tr>

    </table>
    <div id="coord">
    <center>

            <svg id="svg" width="400" height="400"  xmlns="http://www.w3.org/2000/svg">
                <line x1="0px" y1="200px" x2="400px" y2="200px" stroke="black" />
                <line x1="200px" y1="0px" x2="200px" y2="400px" stroke="black" />
                <text x="200px" y="8px" class="mal">Y</text>
                <text x="376px" y="196" class="mal">X</text>

                <text x="192px" y="40px" class="mal">-- R</text>
                <text x="192px" y="120px" class="mal">-- R/2</text>
                <text x="192px" y="280px" class="mal">-- -R/2</text>
                <text x="192px" y="360px" class="mal">-- -R</text>
                <text x="40px" y="204px" class="mal">|</text>
                <text x="120px" y="204px" class="mal">|</text>
                <text x="200px" y="204px" class="mal">0</text>
                <text x="280px" y="204px" class="mal">|</text>
                <text x="360px" y="204px" class="mal">|</text>
                <text x="28px" y="192px" class="mal">-R</text>
                <text x="108px" y="192px" class="mal">-R/2</text>
                <text x="268px" y="192px" class="mal">R/2</text>
                <text x="348px" y="192px" class="mal">R</text>
                <polygon fill="#4169E1" fill-opacity="0.6" points="200,200 120,200 120,35 200,35"></polygon>
                <polygon fill="#4169E1" fill-opacity="0.6" points="200,200 200,280 120,200"></polygon>
                <g transform="translate(200,200)">
                    <path d="M0 0 0 -162 A162 162 0 0 1 162 0" fill="#4169E1" fill-opacity="0.6" />
                </g>
                <circle r="5" id="dot" cx="200" cy="200"
                        fill-opacity="0.7" fill="red" stroke="firebrick" visibility="hidden"></circle>
            </svg>
    </center>
    </div>

    <table>
        <tr id="buttons_enter">

            <td>
                <center>
                    <input type="button" id="btnSubmit" Value="Enter" class="btn" />
                </center>
            </td>
            <td>
                <center>
                    <input type="button" id="reset" class="btn" value="Reset">
                </center>
            </td>

        </tr>
    </table>
    <jsp:include page="table.jsp"/>
    <script src="js/js_part.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>

</html>