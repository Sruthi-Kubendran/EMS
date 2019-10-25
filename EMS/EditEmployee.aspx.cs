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
    public partial class EditEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownListDept.DataSource = DAL.GetDepartments();
                DropDownListDept.DataBind();

                DropDownListManager.DataSource = DAL.GetEmployeeIdAndName();
                DropDownListManager.DataBind();
                DropDownListManager.Items.Add(new ListItem("--select--", "0"));
                DropDownListManager.SelectedValue = "0";

                RangeValidator1.MaximumValue = DateTime.Now.ToShortDateString();
                RangeValidator1.MinimumValue = DateTime.Now.AddYears(-100).ToShortDateString();
            }
        }

        protected void ButtonGetEmpById_Click(object sender, EventArgs e)
        {
            DataSet employee = DAL.GetEmployeeById(Convert.ToInt32(TextBoxEmpID.Text));

            if (employee.Tables[0].Rows.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Employee does not exost');", true);

            }
            else
            {
                DataRow emprow = employee.Tables[0].Rows[0];

                TextBoxName.Text = emprow["Name"].ToString();
                RadioButtonListGender.SelectedValue = emprow["Gender"].ToString();
                TextBoxEmail.Text = emprow["Email"].ToString();
                DropDownListDept.SelectedValue = emprow["DepartmentNo"].ToString();
                TextBoxDateOfBirth.Text = Convert.ToDateTime(emprow["DateOfBirth"]).ToString("yyyy-MM-dd");
                TextBoxDateOfJoining.Text = Convert.ToDateTime(emprow["DateOfJoining"]).ToString("yyyy-MM-dd");
                if (!string.IsNullOrEmpty(emprow["ReportingTo"].ToString()))
                {
                    DropDownListManager.SelectedValue = emprow["ReportingTo"].ToString();
                }
                TextBoxPhone.Text = emprow["Phone"].ToString();
                TextBoxSalary.Text = emprow["Salary"].ToString();
                TextBoxCommission.Text = emprow["Commission"].ToString();
                DropDownListJobTitle.SelectedItem.Text = emprow["JobTitle"].ToString();
            }
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {

        }
    }
}