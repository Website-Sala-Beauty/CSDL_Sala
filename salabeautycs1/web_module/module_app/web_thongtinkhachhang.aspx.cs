using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_app_web_thongtinkhachhang : System.Web.UI.Page
{
    dbcsdlDataContext db = new dbcsdlDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Request.Cookies["phone"].Value != null)
        {
            var checkTaiKhoan = from tk in db.tb_KhachHangs
                                where tk.khachhang_sodienthoai == Request.Cookies["phone"].Value && tk.hidden == true
                                select tk;
            txt_Ten.InnerText = checkTaiKhoan.FirstOrDefault().khachhang_name;

        }
        else
        {
            Response.Redirect("/app-login");
        }
    }
    
    protected void btnDangXuat_ServerClick(object sender, EventArgs e)
    {
        Response.Cookies["phone"].Expires = DateTime.Now.AddDays(-1);
        Response.Redirect("app-login");
    }
}