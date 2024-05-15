<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notas.aspx.cs" Inherits="Calificaciones.Notas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Estudiante"></asp:Label>
&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceEstudiante" DataTextField="apellido" DataValueField="id">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Materia&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceMateria" DataTextField="nombre" DataValueField="id">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Nota"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="83px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrar" />
&nbsp;
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Alumno"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Materia"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Nota"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;
            <asp:Button ID="BuscarCalif" runat="server" Text="Actualizar" OnClick="BuscarCalif_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Borrar" OnClick="Button2_Click" />
            <asp:SqlDataSource ID="SqlBorrarCalif" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" DeleteCommand="DELETE FROM Calificaciones where id=@id" SelectCommand="SELECT * FROM [Calificaciones]">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="TextBox6" Name="id" PropertyName="Text" />
                </DeleteParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlUpNota" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" SelectCommand="SELECT * FROM [Calificaciones]" UpdateCommand="UPDATE Calificaciones SET nota =@nota WHERE id=@id">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox6" Name="id" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox4" Name="nota" PropertyName="Text" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" Visible="False" Width="37px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Font-Size="Larger" ForeColor="Red"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSourceEstudiante" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" SelectCommand="SELECT * FROM [Estudiantes]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceMateria" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" SelectCommand="SELECT * FROM [Materias]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceRegistrar" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" InsertCommand="INSERT INTO Calificaciones(idEstudiante, idMateria, nota) VALUES (@idEstudiante, @idMateria, @nota)" SelectCommand="SELECT * FROM [Calificaciones]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="idEstudiante" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="idMateria" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="TextBox1" Name="nota" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Calificaciones"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlGrilla" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="Apellido" SortExpression="apellido" />
                    <asp:BoundField DataField="nombre1" HeaderText="Materia" SortExpression="nombre1" />
                    <asp:BoundField DataField="nota" HeaderText="Nota" SortExpression="nota" />
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Estudiantes.aspx">Estudiantes</asp:HyperLink>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Materias.aspx">Materias</asp:HyperLink>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource ID="SqlGrilla" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" SelectCommand="SELECT Calificaciones.id, Estudiantes.nombre,Estudiantes.apellido, Materias.nombre, Calificaciones.nota FROM calificaciones INNER JOIN Estudiantes ON Calificaciones.idEstudiante = Estudiantes.id INNER JOIN materias ON Calificaciones.idMateria = Materias.id"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
