using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class web_module_web_TimKiem : System.Web.UI.Page
{
    dbcsdlDataContext db = new dbcsdlDataContext();
    cls_Alert alert = new cls_Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        //lấy giá trị router

       string search = Convert.ToString(RouteData.Values["text"]);
        var getData = from lnb in db.tb_SanPhams
                      where  lnb.sanpham_name.Contains(search)
                      select new
                      {
                          lnb.sanpham_name,
                          lnb.sanpham_id,
                          lnb.sanpham_giatien,
                          lnb.sanpham_image,
                          //  lnb.solu,
                          lnb.loaisanpham_id
                      };
        rpMauNail.DataSource = getData;
        rpMauNail.DataBind();
    }
}