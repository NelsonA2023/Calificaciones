<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Estudiantes.aspx.cs" Inherits="Calificaciones.Estudiantes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="nombreI" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Apellido"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="apellidoI" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Registrar" runat="server" OnClick="Registrar_Click" Text="Registrar" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" InsertCommand="INSERT INTO Estudiantes(nombre, apellido) VALUES (@nombre, @apellido)" ProviderName="<%$ ConnectionStrings:IssdTP42023ConnectionString.ProviderName %>" SelectCommand="SELECT [nombre], [apellido] FROM [Estudiantes]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="nombreI" Name="nombre" PropertyName="Text" />
                    <asp:ControlParameter ControlID="apellidoI" Name="apellido" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" SelectCommand="SELECT * FROM [Estudiantes]"></asp:SqlDataSource>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="nombreI1" runat="server" Width="56px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Buscar" runat="server" OnClick="Buscar_Click" Text="Buscar" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSourceBuscar" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" SelectCommand="SELECT id, nombre, apellido FROM Estudiantes where id = @id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="nombreI1" Name="id" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="nombreI0" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Apellido"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="apellidoI0" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Modificar" runat="server" OnClick="Modificar_Click" Text="Modificar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Borrar" runat="server" OnClick="Borrar_Click" Text="Borrar" />
            <asp:SqlDataSource ID="SqlDataSourceBorrar" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" DeleteCommand="DELETE FROM Estudiantes where id = @id" SelectCommand="SELECT * FROM [Estudiantes]">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="nombreI1" Name="id" PropertyName="Text" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </div>
        <asp:SqlDataSource ID="SqlDataSourceUp" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" SelectCommand="SELECT [nombre], [apellido] FROM [Estudiantes]" UpdateCommand="UPDATE Estudiantes SET nombre = @nombre, apellido = @apellido WHERE id = @id
">
            <UpdateParameters>
                <asp:ControlParameter ControlID="nombreI0" Name="nombre" PropertyName="Text" />
                <asp:ControlParameter ControlID="apellidoI0" Name="apellido" PropertyName="Text" />
                <asp:ControlParameter ControlID="nombreI1" Name="id" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Notas.aspx">Calificaciones</asp:HyperLink>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Materias.aspx">Materias</asp:HyperLink>
    </form>
</body>
</html>
