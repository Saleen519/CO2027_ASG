using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Admin
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            GridView1.DataBind();
                
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            //note much of the code to do this properly (i.e. check file type is correct) is missing

            //get the id from the query string (keeping it as a string is OK in this case)
            string ProductId = Request.QueryString["ProductId"];

            string filename = ProductId + ".jpg";
            string saveLocation = Server.MapPath("~/ProductImages/" + filename);

            ImageFileUploadControl.SaveAs(saveLocation);
        }

        protected void FormView2_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {

        }
    }
}