﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Referencia de Dados
using System.Data;

public partial class pt_br_adm_servico : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Adicionando o Nome Do Usuario a "OE"
        DataView usr_id;
        usr_id = (DataView)MySqlUsr.Select(DataSourceSelectArguments.Empty);
        nome_abertura.Text = usr_id.Table.Rows[0]["nome_usr"].ToString();

        data_abertura.Text = DateTime.Now.ToString();
    }

    protected void ClienteDD_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ClienteDD.Items.Count > 0)
        {
            btnProcurar_cliente.Enabled = false;
        }
        else
        {
            btnProcurar_cliente.Enabled = true;
        }
    }
}
/*
DataView pesq_cli;
pesq_cli = (DataView)MySqlSelectClient.Select(DataSourceSelectArguments.Empty);

                if (pesq_cli.Table.Rows.Count == 0)
                {
                    //Cliente não encontrado
                }
                else
                {
                    //Cliente encontrado
                    cpf_cli.Text = pesq_cli.Table.Rows[0]["cpf_usr"].ToString();
                }

    */