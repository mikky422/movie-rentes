<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home page .aspx.cs" Inherits="new_Moives.WebForm2" %>

 
    <!DOCTYPE html>
    <html lang="en" xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta charset="utf-8" />
        <title>Home Page</title>
        <style>
            body {
                background: url(https://media.osram.info/media/img/osram-dam-233386/s,x,1920,y,0/m,d,h/388206_Breakaway_Theater.jpg);
                background-repeat: no-repeat;
                background-size: cover;
            }

            .table {
                display: flex;
                list-style: none;
                padding-left: 10px; 
            }

            .li {
                margin-left: 10px;
            }

            .navbar {
                display: flex;
                align-items: center;
                justify-content: center;
                background-color: white;
                justify-content: space-evenly;
            }

            .three {
                display: flex;

            }
        </style>
    </head>

    <body>
        <main>
            <form id="form1" runat="server">
                <div class="navbar">
                    <div>
                        <img style="   height: 110px;
                        width: 311px;" src="https://cdn.retrojunk.com/article-images/9xudU5Z5vv3H52HF5eUV1.jpeg"
                            alt="">
                    </div>
                    <div class="three">
                        <ul class="table">
                            <li style=" margin-right: 62px;
                            font-size: 29px;   "><a href="Home Page.aspx">Home</li>
                            <li style=" margin-right: 62px; font-size: 29px;   "><a href="Login.aspx">Sign In</li>
                            <li style=" margin-right: 62px; font-size: 29px;   "><a href="Signup.aspx"> Sign Up
                            </li>
                            <li style=" margin-right: 62px; font-size: 29px;   "><a href="About Us.aspx"> About Us
                            </li>
                        </ul>
                    </div>
                </div>
            </form>
        </main>
    </body>

    </html>
