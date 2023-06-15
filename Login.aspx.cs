using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Services;
using System.Web.Services.Description;
using System.Web.UI;


namespace Projects
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection sc = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"E:\\Sem 4\\ADT(Application Development Tools)\\Codes\\Projects\\App_Data\\DATA.mdf\";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            user_l.Visible = false;
            pass_l.Visible = false;
            Label.Visible = false;
        }

        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void log_Click(object sender, EventArgs e)
        {
            if (user.Text.Length == 0)
            {
                user_l.Visible = true;
            }
            else if (pass.Text.Length == 0)
            {
                pass_l.Visible = true;
            }
            else
            {
                SqlConnection sc = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"E:\\Sem 4\\ADT(Application Development Tools)\\Codes\\Projects\\App_Data\\DATA.mdf\";Integrated Security=True");
                sc.Open();
                string query_a = "select Password from Project where Username ='" + user.Text + "'";
                SqlCommand cmd_a = new SqlCommand(query_a, sc);
                SqlDataReader reader_a = cmd_a.ExecuteReader();
                if (reader_a.Read())
                {
                    string stored_password = reader_a.GetString(0);
                    if (stored_password == pass.Text)
                    {
                        Session["music"] = "true";
                        Response.Redirect("Music.aspx");
                        Label.Visible = true;
                    }
                    else
                    {
                        Label.Text = "Incorrect Password😭";
                        Label.Visible = true;
                    }
                }
                else
                {
                    Label.Text = "Please Register yourself first!🫣";
                    Label.Visible = true;
                }
                sc.Close();
            }
        }
    }
}