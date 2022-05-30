<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="new_Moives.Login" %>

 
	<!DOCTYPE html>

	<html xmlns="http://www.w3.org/1999/xhtml">

	<head runat="server">
		<style>
			html,
			body {
				width: 100%;
				height: 100%;
			}

			body {
				background: url(https://media.osram.info/media/img/osram-dam-233386/s,x,1920,y,0/m,d,h/388206_Breakaway_Theater.jpg);
				background-repeat: no-repeat;
				background-size: cover;
			}

			* {
				margin: 0;
				padding: 0;
				box-sizing: border-box;
			}

			main {
				width: 100%;
				height: 100%;
				display: flex;
				flex-direction: column;
				color: white;
			}

			.form-section {
				display: flex;
				flex-direction: column;
				align-items: center;
				justify-content: center;
				margin: 20px 0;
			}

			#form1 {

				display: flex;
				flex-direction: column;
				background: #FFFFFF;
				box-sizing: -90px;
				border: none;
				width: 410px;
				height: 310px;
				align-items: center;
				border-radius: 10px;
				justify-content: center;
			}

			.form-controller {
				display: flex;
				flex-wrap: wrap;
				margin: 10px 0;
				font-family: monospace;
				text-align: center;
				justify-content: center;
			}

			input {
				font-size: 17px;
				padding: 14px 16px;
				width: 330px;
				border-radius: 18px;
				font-family: monospace;
				text-align: center;
			}



			input[type='submit'] {
				cursor: pointer;
				background-color: #1877f2;
				border: none;
				border-radius: 6px;
				font-size: 20px;
				line-height: 48px;
				padding: 0 16px;
				width: 120px;
				color: white;
			}
		</style>
		<title>login</title>
	</head>

	<body>
		<main>
			<div class="form-section">
				<form id="form1" runat="server">
					<div class="form-controller">
						<asp:TextBox placeholder="username" ID="txtusername" runat="server"
							></asp:TextBox>
					</div>

					<div class="form-controller">
						<asp:TextBox placeholder="password" ID="txtpassword" runat="server" TextMode="Password">
						</asp:TextBox>
					</div>
					<div class="form-controller">
						<asp:Button ID="Signin" runat="server" Text="login" OnClick="Signin_Click"  />
					    <asp:Label ID="errormsg" runat="server" ForeColor="Red"></asp:Label>
					</div>
				</form>
			</div>
		</main>
	</body>

	</html>
