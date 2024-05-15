<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Materias.aspx.cs" Inherits="Calificaciones.Materias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Materia"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="apellidoI" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Registrar" runat="server" Text="Registrar" OnClick="Registrar_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSourceIM" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" InsertCommand="INSERT INTO Materias(nombre) VALUES (@nombre)" SelectCommand="SELECT [nombre] FROM [Materias]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="apellidoI" Name="nombre" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" SelectCommand="SELECT * FROM [Materias]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" DeleteCommand="DELETE FROM [Materias] WHERE [id] = @id" InsertCommand="INSERT INTO [Materias] ([nombre]) VALUES (@nombre)" ProviderName="<%$ ConnectionStrings:IssdTP42023ConnectionString.ProviderName %>" SelectCommand="SELECT [id], [nombre] FROM [Materias]" UpdateCommand="UPDATE [Materias] SET [nombre] = @nombre WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="nombreI1" runat="server" Width="56px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Buscar" runat="server" Text="Buscar" OnClick="Buscar_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Materia"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="apellidoI0" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Modificar" runat="server" OnClick="Modificar_Click" Text="Modificar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Borrar" runat="server" Text="Borrar" OnClick="Borrar_Click" />
        </div>
        <asp:SqlDataSource ID="SqlDataSourceBuscarM" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" SelectCommand="SELECT id, nombre FROM Materias where id=@id">
            <SelectParameters>
                <asp:ControlParameter ControlID="nombreI1" Name="id" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceUpM" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" SelectCommand="SELECT [nombre] FROM [Materias]" UpdateCommand="UPDATE Materias SET nombre=@nombre WHERE id=@id">
            <UpdateParameters>
                <asp:ControlParameter ControlID="apellidoI0" Name="nombre" PropertyName="Text" />
                <asp:ControlParameter ControlID="nombreI1" Name="id" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceDelM" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" DeleteCommand="DELETE FROM Materias WHERE id=@id" SelectCommand="SELECT * FROM [Materias]">
            <DeleteParameters>
                <asp:ControlParameter ControlID="nombreI1" Name="id" PropertyName="Text" />
            </DeleteParameters>
        </asp:SqlDataSource>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Notas.aspx">Calificciones</asp:HyperLink>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Estudiantes.aspx">Estudiantes</asp:HyperLink>
    </form>
</body>
</html>
