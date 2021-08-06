<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id_airline" DataSourceID="ObjectDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Seleccionar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" OnClientClick="return confirm('Seguro que desea eliminarlo?');" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="id_airline" HeaderText="id_airline" SortExpression="id_airline" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
                <asp:BoundField DataField="numero_aviones" HeaderText="numero_aviones" SortExpression="numero_aviones" />
                <asp:BoundField DataField="rutas" HeaderText="rutas" SortExpression="rutas" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="delete_airline_sp" InsertMethod="create_airline_sp" SelectMethod="airline_list" TypeName="Airlines.WebService" UpdateMethod="update_airline_sp">
            <DeleteParameters>
                <asp:Parameter Name="id_airline" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="descripcion" Type="String" />
                <asp:Parameter Name="ciudad" Type="String" />
                <asp:Parameter Name="numero_aviones" Type="Int32" />
                <asp:Parameter Name="rutas" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id_airline" Type="Int32" />
                <asp:Parameter Name="descripcion" Type="String" />
                <asp:Parameter Name="ciudad" Type="String" />
                <asp:Parameter Name="numero_aviones" Type="Int32" />
                <asp:Parameter Name="rutas" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="ObjectDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="id_airline" HeaderText="id_airline" SortExpression="id_airline" Visible="False" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
                <asp:BoundField DataField="numero_aviones" HeaderText="numero_aviones" SortExpression="numero_aviones" />
                <asp:BoundField DataField="rutas" HeaderText="rutas" SortExpression="rutas" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id_pilot" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Seleccionar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" OnClientClick="return confirm('Seguro que desea eliminarlo?');" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="id_pilot" HeaderText="id_pilot" SortExpression="id_pilot" />
                <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
                <asp:BoundField DataField="salario" HeaderText="salario" SortExpression="salario" />
                <asp:BoundField DataField="comision" HeaderText="comision" SortExpression="comision" />
                <asp:BoundField DataField="fecha_ingreso" HeaderText="fecha_ingreso" SortExpression="fecha_ingreso" />
                <asp:BoundField DataField="cargo" HeaderText="cargo" SortExpression="cargo" />
                <asp:BoundField DataField="horas_vuelo" HeaderText="horas_vuelo" SortExpression="horas_vuelo" />
                <asp:BoundField DataField="id_airline" HeaderText="id_airline" SortExpression="id_airline" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="delete_pilot_sp" InsertMethod="create_pilot_sp" SelectMethod="pilots_list" TypeName="Airlines.WebService" UpdateMethod="update_pilot_sp">
            <DeleteParameters>
                <asp:Parameter Name="id_pilot" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="salario" Type="Decimal" />
                <asp:Parameter Name="comision" Type="Decimal" />
                <asp:Parameter Name="fecha_ingreso" Type="String" />
                <asp:Parameter Name="cargo" Type="String" />
                <asp:Parameter Name="horas_vuelo" Type="Int32" />
                <asp:Parameter Name="id_airline" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id_pilot" Type="Int32" />
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="salario" Type="Decimal" />
                <asp:Parameter Name="comision" Type="Decimal" />
                <asp:Parameter Name="fecha_ingreso" Type="String" />
                <asp:Parameter Name="cargo" Type="String" />
                <asp:Parameter Name="horas_vuelo" Type="Int32" />
                <asp:Parameter Name="id_airline" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    
    </div>
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="ObjectDataSource2" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="id_pilot" HeaderText="id_pilot" SortExpression="id_pilot" Visible="False" />
                <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
                <asp:BoundField DataField="salario" HeaderText="salario" SortExpression="salario" />
                <asp:BoundField DataField="comision" HeaderText="comision" SortExpression="comision" />
                <asp:BoundField DataField="fecha_ingreso" HeaderText="fecha_ingreso" SortExpression="fecha_ingreso" />
                <asp:BoundField DataField="cargo" HeaderText="cargo" SortExpression="cargo" />
                <asp:BoundField DataField="horas_vuelo" HeaderText="horas_vuelo" SortExpression="horas_vuelo" />
                <asp:BoundField DataField="id_airline" HeaderText="id_airline" SortExpression="id_airline" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    </form>
</body>
</html>
