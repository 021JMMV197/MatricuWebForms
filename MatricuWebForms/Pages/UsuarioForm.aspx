<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsuarioForm.aspx.cs" Inherits="MatricuWebForms.Pages.UsuarioForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login de Usuario</title>
    <link rel="stylesheet" type="text/css" href="../Styles/StyleSheet.css"
</head>
<body>
    <form id="loginform" runat="server" method="post">
        <h2>Login de Usuario</h2>
        <label>Nickname:</label>
        <input type="text" id="nickname" name="nickname" class="input" required/> <br /> 

        <label>Contraseña:</label>
        <input type="password" id="contrasenna" name="contrasenna" class="input" required/> <br /> 

        <input type="submit" value="Login" class="button"/>

    </form>
</body>
</html>
