using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101Assignment2
{
    public partial class AddNewTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddButton_Click(Object sender,
                       EventArgs e)
        {
            //**DATABASE ADD CODE GOES HERE
            Response.Redirect("Teachers.aspx?cmd=added");
        }
    }
}