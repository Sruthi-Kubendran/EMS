using EMS_DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.DataSource = DAL.GetDepartments();
            DropDownList1.DataBind();
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            var deptId = Convert.ToInt32(DropDownList1.SelectedValue);
            DataSet result = DAL.GetEmployeeByDept(deptId);

            GridView1.DataSource = result;
            GridView1.DataBind();

        }
    }
}