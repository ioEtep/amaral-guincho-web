﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="pt_br_app_login" MasterPageFile="~/pt-br/index.master" %>

<asp:Content ContentPlaceHolderID="indexBodyPlaceholder" runat="server">
    <style>
            .loginCard{
                display:block;
                margin-right:auto;
                margin-left:auto;
                margin-top:5%;
                width:400px;
                text-align:center;
            }
           .loginCard > div{
             margin:25px 0px;
           }
           .loginForm > div{
               margin-top:8px 0;
           }
            .loginCard > .mdl-card__title{
                color:#808080;
            }
            .loginForm > .mdl-button{
                display:block;
                margin-right:auto;
                margin-left:auto;
            }
            .menuboard{
                margin-top:50px;
            }
        </style>
    <div class="loginCard mdl-card mdl-shadow--3dp">
        <div class="mdl-card__title">
            <h2 class="align-center mdl-card__title-text">Login</h2>
        </div>
        <form class="loginForm" runat="server">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <asp:TextBox class="mdl-textfield__input" ID="login" runat="server" />
                <label class="mdl-textfield__label" for="login">Nome de Usuário</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <asp:TextBox class="mdl-textfield__input" ID="password" TextMode="Password" runat="server" />
                <label class="mdl-textfield__label" for="password" id="lblPassword" runat="server">Senha</label>
            &nbsp;</div>
            <div class="menuboard mdl-card__actions mdl-card--border">
                <asp:Button ID="loginEntrar" runat="server" Text="Entrar" class="mdl-button mdl-js-button mdl-button--primary" OnClick="loginEntrar_Click" />
                <asp:SqlDataSource ID="SqlLogin" runat="server" ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>" OnSelecting="SqlLogin_Selecting" ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_login, username_login, password_login, id_func FROM login WHERE (username_login = @LOGIN) AND (password_login = @PASSWORD)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="login" Name="LOGIN" PropertyName="Text" />
                        <asp:ControlParameter ControlID="password" Name="PASSWORD" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </form>
    </div>
</asp:Content>
