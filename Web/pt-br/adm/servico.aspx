﻿<%@ Page MasterPageFile="~/pt-br/adm/adm-master.master" Language="C#" AutoEventWireup="true" CodeFile="servico.aspx.cs" Inherits="pt_br_adm_servico" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="../../css/material-input.css" type="text/css" />
</asp:Content>



<asp:Content ContentPlaceHolderID="cph" runat="server">
    <h1>Ordem de Serviço</h1>
    <form action="" method="get" class="container">
        <table class="frmTable">
            <tr class="System_info">
                <td>
                    <div class="group">
                        <asp:Label Text="Numero Ordem de Serviço:" runat="server" CssClass="simpleLabel" />
                        <asp:TextBox ID="id_oe" runat="server" CssClass="input" placeholder="Numero OE" Enabled="False" />
                        <span class="highlight"></span>
                        <span class="bar"></span>
                    </div>
                </td>
                <td>
                    <div class="group">
                        <asp:Label Text="Data:" CssClass="simpleLabel" runat="server" />
                        <asp:TextBox ID="data_abertura" runat="server" CssClass="input" Enabled="false"></asp:TextBox>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                    </div>
                </td>
                <td>
                    <div class="group">
                        <asp:Label Text="Aberto Por:" CssClass="simpleLabel" runat="server" />
                        <asp:TextBox ID="nome_abertura" CssClass="input" runat="server" Enabled="false" />
                        <span class="highlight"></span>
                        <span class="bar"></span>
                    </div>
                </td>
            </tr>
            <tr class="seguro">
                <td>
                    <div class="group">
                        <asp:Label Text="Seguradora" CssClass="simpleLabeldd" runat="server" />
                        <asp:DropDownList runat="server" CssClass="dropdown" DataSourceID="MySqlSeguro" DataTextField="nome_seguro" DataValueField="id_seguro">
                            <asp:ListItem Text="Seguradora1" />
                            <asp:ListItem Text="Seguradpra2" />
                        </asp:DropDownList>
                    </div>
                </td>
                <td>
                    <div class="group">
                        <asp:TextBox ID="nome_assistente" CssClass="input" runat="server" />
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <asp:Label Text="Asisstente" CssClass="label" runat="server" />
                    </div>
                </td>
                <td>
                    <div class="group">
                        <asp:TextBox ID="tipo_seguro" CssClass="input" runat="server" />
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <asp:Label Text="Tipo de Seguro" CssClass="label" runat="server" />
                    </div>
                </td>
            </tr>
            <tr class="cliente">
                <td>
                    <!-- Cadastrando Cliente-->
                    <asp:DropDownList ID="ClienteDD" runat="server" CssClass="dropdown" Enabled="true" OnSelectedIndexChanged="ClienteDD_SelectedIndexChanged">
                        <asp:ListItem Text="Novo Cliente" />
                        <asp:ListItem Text="Cliente Existente" />
                    </asp:DropDownList>
                </td>
                <td>
                    <div class="group">
                        <asp:TextBox ID="nome_pesq_cli" CssClass="input" runat="server" />
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <asp:Label Text="Nome Cliente" CssClass="label" runat="server" />
                    </div>
                </td>
                <td>
                    <asp:Button Text="Procurar" ID="btnProcurar_cliente" runat="server" Class="inline-button" Enabled="True"/>
                </td>
            </tr>
            <tr class="client-info">
                <td>
                    <asp:DropDownList ID="sexoCli" runat="server" CssClass="dropdown">
                        <asp:ListItem Text="Masculino" />
                        <asp:ListItem Text="Feminino" />
                    </asp:DropDownList>
                </td>
                <td>
                    <div class="group">
                        <asp:TextBox ID="email_cli" CssClass="input" runat="server"/>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <asp:Label Text="Email" CssClass="label" runat="server" />
                    </div>
                </td>
                <td>
                    <div class="group">
                        <asp:TextBox ID="Cel_cli" CssClass="input" runat="server" />
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <asp:Label Text="Celular" CssClass="label" runat="server" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="group">
                        <asp:TextBox ID="cpf_cli" CssClass="input" runat="server" />
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <asp:Label Text="CPF" CssClass="label" runat="server" />
                    </div>
                </td>
                <td>
                    <div class="group">
                        <asp:TextBox ID="endereco_cli" CssClass="input" runat="server" TextMode="MultiLine" />
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <asp:Label Text="Endereço" CssClass="label" runat="server" />
                    </div>
                </td>
                <td>
                    <div class="group">
                        <asp:TextBox ID="local_de_retirada" CssClass="input" TextMode="MultiLine" runat="server" />
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <asp:Label Text="Local de Retirada" CssClass="label" runat="server" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="group">
                        <asp:TextBox ID="Agendamento" CssClass="input" runat="server" />
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <asp:Label Text="Agendamento" CssClass="label" runat="server" />
                    </div>
                </td>
                <td>
                    <div class="group">
                        <asp:TextBox ID="numero_sinistro" CssClass="input" placeholder="Numero Sinistro" runat="server" />
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <asp:Label Text="Numero Sinistro" CssClass="label" runat="server" />
                    </div>
                </td>
                <td>
                    <div class="group">
                        <asp:TextBox ID="local_entrega" CssClass="input" TextMode="MultiLine" placeholder="Local de Entrega" runat="server" />
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <asp:Label Text="" CssClass="label" runat="server" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button Text="Resetar" runat="server" Class="button" />
                </td>
                <td></td>
                <td>
                    <asp:Button Text="Obrir OE" runat="server" Class="button" />
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="MySqlUsr" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr, login_usr, email_usr, pwd_usr, type_usr, nome_usr, sx_usr, birth_usr, cpf_usr, cep_usr, mobile_usr FROM usr WHERE (id_usr = @IDUSR)">
            <SelectParameters>
                <asp:SessionParameter Name="IDUSR" SessionField="id_usr" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="MySqlSeguro" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT * FROM seguro"></asp:SqlDataSource>
       <!-- <asp:SqlDataSource ID="MySqlSelectClient" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr, login_usr, email_usr, pwd_usr, type_usr, nome_usr, sx_usr, birth_usr, cpf_usr, cep_usr, mobile_usr FROM usr WHERE (nome_usr = @NOME) AND (type_usr = 'usr')  OR (cpf_usr = @CPF) AND (type_usr = 'usr') OR (mobile_usr = @CEL) AND (type_usr = 'usr')">
        </asp:SqlDataSource>-->
    </form>
</asp:Content>
