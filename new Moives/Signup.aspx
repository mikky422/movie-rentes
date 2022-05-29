<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="new_Moives.WebForm1" %>

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
				margin-top:50px;

			}

			#form1 {
				display: flex;
				flex-direction: column;
				background: #FFFFFF;
				box-sizing: -90px;
				border: none;
				width: 410px;
				height: 710px;
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

			.both {
				color: black;
				text-align: left;
				font-size: 20px;
			}

			.both tbody {
				display: flex;
				flex-wrap: wrap;
			}

			.both tbody input {
				margin: 0 10px;
				padding: 0;
				width: fit-content;
			}

			.both {
				color: black;
				text-align: left;
				font-size: 20px;
				align-items: center;
				display: flex;
			}
		</style>
		<title>registeration</title>
	</head>

	<body>

		<main>
			<div class="form-section">
				<form id="form1" runat="server">

					<div class="form-controller">
						<asp:TextBox placeholder="username" ID="username" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ControlToValidate="username" ID="RequiredFieldValidator1"
							runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Black">
						</asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
							ControlToValidate="username" ErrorMessage="wrong username"
							ValidationExpression="\w{5,10}\d?" ForeColor="Black"></asp:RegularExpressionValidator>
					</div>

					<div class="form-controller">
						<asp:TextBox placeholder="password" ID="password" runat="server" TextMode="Password" >
						</asp:TextBox>
						<asp:RequiredFieldValidator ControlToValidate="password" ID="RequiredFieldValidator2"
							runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Black">
						</asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
							ControlToValidate="password" ErrorMessage="Wrong Password"
							validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ForeColor="Black"></asp:RegularExpressionValidator>
					</div>

					<--confirmpassword-->
						<div class="form-controller">
							<asp:TextBox placeholder="Confirm password" ID="confirmpassword" runat="server" TextMode="Password">
							</asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="confirmpassword" ControlToValidate="password" ErrorMessage="Password must match" Display="Dynamic"></asp:CompareValidator>
							<asp:RequiredFieldValidator ControlToValidate="confirmpassword" ID="RequiredFieldValidator3"
								runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Black">
							</asp:RequiredFieldValidator>
						</div>
						<--firstname-->
							<div class="form-controller">
								<asp:TextBox placeholder="First Name" ID="firstname" runat="server"></asp:TextBox>
								<asp:RequiredFieldValidator ControlToValidate="firstname" ID="RequiredFieldValidator4"
									runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Black">
								</asp:RequiredFieldValidator>
								<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"
									ControlToValidate="firstname" ErrorMessage="wrong entery"
									ValidationExpression="\w{5,10}\d?" ForeColor="Black">
								</asp:RegularExpressionValidator>
								<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
							</div>
							<--lastname-->
								<div class="form-controller">
									<asp:TextBox placeholder="Last name" ID="lastname" runat="server"></asp:TextBox>
									<asp:RequiredFieldValidator ControlToValidate="lastname"
										ID="RequiredFieldValidator5" runat="server"
										ErrorMessage="RequiredFieldValidator" ForeColor="Black">
									</asp:RequiredFieldValidator>
									<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"
										ControlToValidate="lastname" ErrorMessage="wrong entry"
										ValidationExpression="\w{5,10}\d?" ForeColor="Black">
									</asp:RegularExpressionValidator>
								</div>
								<--emailaddress-->
									<div class="form-controller">
										<asp:TextBox placeholder="Email Address" ID="emailaddress" runat="server">
										</asp:TextBox>
										<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
											ControlToValidate="emailaddress" ErrorMessage="Wrong Email"
											ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ForeColor="Black">
										</asp:RegularExpressionValidator>
									</div>
									<--Gender-->
										<div class="form-controller">
											<div class="both">
												<asp:Label placeholder="Gender" ID="Label7" runat="server"
													Text="Gender"></asp:Label>
												<asp:RadioButtonList ID="RadioButtonList1" runat="server">
													<asp:ListItem Value="M">male</asp:ListItem>
													<asp:ListItem Value="F">Female</asp:ListItem>
												</asp:RadioButtonList>
					    <asp:Label ID="usernamemsg" runat="server"></asp:Label>
											</div>
										</div>

										<div class="form-controller">
											<asp:Button ID="Signup" runat="server" Text="Sign up"
												OnClick="Signup_Click" />
										    <br/>
										</div>
				</form>
			</div>
		</main>
	</body>

	</html>
 