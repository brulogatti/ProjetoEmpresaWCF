using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjEmpresaWCF
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ServicoWCF.ServicoClient wcf = new ServicoWCF.ServicoClient();
            GDdados.DataSource = wcf.Consultar("");
            GDdados.DataBind();
        }

        protected void BtnSalvar_Click(object sender, EventArgs e)
        {
            if (txtnome.Text==""||txtqtd.Text==""||txtendereco.Text=="")
            {
                lblmsg.Text = "Preencha os campos!";
            }
            else
            {
                
            }
        }

        protected void BtnConsulta_Click(object sender, EventArgs e)
        {
            ServicoWCF.EntTesteCadastro objCliente = new ServicoWCF.EntTesteCadastro();
            objCliente.Nome = txtconsulta.Text;
            ServicoWCF.ServicoClient wcf = new ServicoWCF.ServicoClient();
            GDconsulta.DataSource = wcf.Consultar(txtconsulta.Text);
            GDconsulta.DataBind();
        }
    }
}