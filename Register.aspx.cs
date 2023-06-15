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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reg_Click(object sender, EventArgs e)
        {
            SqlConnection sc = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"E:\\Sem 4\\ADT(Application Development Tools)\\Codes\\Projects\\App_Data\\DATA.mdf\";Integrated Security=True");
            sc.Open();
            string gender;
            if (male.Checked == true)
            {
                female.Checked = false;
                gender = male.Text;
            }
            else 
            {
                male.Checked = false;
                gender = female.Text;
            }
            if (password.Text == cpassword.Text)
            {
                string q = "insert into Project values('" + name.Text + "','" + address.Text + "','" + mobile.Text + "','" + gender.ToString()+ "','" + dob.Text + "','" + userid.Text + "','" + password.Text + "')";
                SqlCommand cmd = new SqlCommand(q, sc);
                try
                {
                    cmd.ExecuteNonQuery();
                    Response.Write("Registered");
                    sc.Close();
                }
                catch (SqlException ex)
                {
                    if (ex.Number == 2627)
                        Response.Write("Data already exists");
                }
            }
            else
            {
                Response.Write("Password and Confirm Password not same");
            }
        }

        protected void female_CheckedChanged(object sender, EventArgs e)
        {
         
        }

        protected void male_CheckedChanged(object sender, EventArgs e)
        {
            
        }
    }
}