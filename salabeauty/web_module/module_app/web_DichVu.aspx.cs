using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_app_web_DichVu : System.Web.UI.Page
{
    dbcsdlDataContext db = new dbcsdlDataContext();
    //cls_Alert alert = new cls_Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {


            if (Request.Cookies["phone"].Value != null)
            {
                if (!IsPostBack)
                    loadData();
            }
        }
        catch (NullReferenceException)
        {
            Response.Redirect("/app-login");
        }
    }
    protected void loadData()
    {
        var getData = from dv in db.tb_News
                      where dv.newscate_id == 1
                      orderby dv.news_id descending
                      select dv;

        rpNews.DataSource = getData;
        rpNews.DataBind();

    }

   
}