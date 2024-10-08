using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MatricuWebForms.Pages
{
    public partial class UsuarioForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nick = Request.Form["nickname"];
            string clave = Request.Form["contrasenna"];

            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString))
            {
                conn.Open(); //abrimos conexion 
                String query = "select * from Usuarios where NICKNAME = @nick and CONTRASENNA = @clave";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@nick", nick);
                cmd.Parameters.AddWithValue("@clave", clave);

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    Console.WriteLine("Ingreso Exitoso!!!");
                }
                else
                {
                    Console.WriteLine("Intento fallido!");
                }

            }
        }
    }
}