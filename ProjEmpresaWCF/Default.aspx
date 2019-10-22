<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjEmpresaWCF.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 166px;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Cadastro da Empresa</h1>
        <table class="auto-style1">
             <tr>
                 <td class="auto-style2">
                     <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="txtnome" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     <asp:Label ID="Label2" runat="server" Text="Quantidade Funcionários:"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="txtqtd" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     <asp:Label ID="Label3" runat="server" Text="Endereço:"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="txtendereco" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">&nbsp;</td>
                 <td>
                     <asp:Button ID="BtnSalvar" runat="server" Text="Salvar" OnClick="BtnSalvar_Click" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">&nbsp;</td>
                 <td>
                     <asp:Label ID="lblmsg" runat="server"></asp:Label>
                     &nbsp;</td>
             </tr>
         </table>
        <h2>Consultar:</h2>
        <table class="auto-style1">
            <tr>
                 <td class="auto-style2">
                     <asp:Label ID="Label4" runat="server" Text="Nome:"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="txtconsulta" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">&nbsp;</td>
                 <td>
                     <asp:Button ID="BtnConsulta" runat="server" Text="Consultar" OnClick="BtnConsulta_Click" />
                 </td>
             </tr>
        </table>
        <div>
            <asp:GridView runat="server" ID="GDconsulta" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="NOME" HeaderText="NOME" />
                    <asp:BoundField DataField="QTDFUNCIONARIOS" HeaderText="QUANTIDADE FUNCIONÁRIOS" />
                    <asp:BoundField DataField="ENDERECO" HeaderText="ENDEREÇO" />
                </Columns>
            </asp:GridView>
        </div>
        <h2 class="auto-style3">
         Todas as empresas cadastradas:
        </h2>
        <div>
            <asp:GridView runat="server" ID="GDdados" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="NOME" HeaderText="NOME" />
                    <asp:BoundField DataField="QTDFUNCIONARIOS" HeaderText="QUANTIDADE FUNCIONÁRIOS" />
                    <asp:BoundField DataField="ENDERECO" HeaderText="ENDEREÇO" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
