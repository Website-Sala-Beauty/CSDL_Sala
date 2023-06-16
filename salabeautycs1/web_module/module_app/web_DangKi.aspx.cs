using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Http;
using Newtonsoft.Json.Linq;

public partial class web_module_module_app_web_DangKi : System.Web.UI.Page
{
    dbcsdlDataContext db = new dbcsdlDataContext();
    cls_Alert alert = new cls_Alert();
    cls_security md5 = new cls_security();
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnDangki_ServerClick(object sender, EventArgs e)
    {
        if (txtSoDienThoai.Value == "" || txtHoTen.Value=="" || txtMatKhau.Value == "" || txtEmail.Value == "")
        {
            alert.alert_Error(Page, "Vui lòng nhập đầy đủ thông tin", "");
        }
        else
        {
            var checkTaiKhoan = from tk in db.tb_KhachHangs where tk.khachhang_sodienthoai == txtSoDienThoai.Value select tk;
            if(checkTaiKhoan.Count()>0)
            {
                alert.alert_Error(Page, "Số điện thoại này đã tồn tại", "");
            }   
            else
            {  
                if(checkExitEmailAsync(txtEmail.Value) == true)
                {
                tb_KhachHang insert = new tb_KhachHang();
                insert.khachhang_name = txtHoTen.Value;
                insert.khachhang_sodienthoai = txtSoDienThoai.Value;
                insert.khachhang_gmail = txtEmail.Value;
                //insert.khachhang_password = txtMaGioiThieu.Value;

                insert.khachhang_password = md5.HashCode(txtMatKhau.Value);
                insert.hidden = true;
                insert.rowguid = System.Guid.NewGuid();
                    insert.thongtinchinhanh_id = 1;

                    db.tb_KhachHangs.InsertOnSubmit(insert);
                db.SubmitChanges();
                alert.alert_Success(Page, "Đăng kí thành công", "");
                Response.Redirect("~/app-login");
                }
                else
                {
                    alert.alert_Warning(Page, "Email không tồn tại!", "");


                }

            }    
            
        }
    }
    private bool checkExitEmailAsync(string email)
    {


        using (HttpClient client = new HttpClient())
        {
            System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12;
            string url = "https://api.hunter.io/v2/email-verifier?email=" + email + "&api_key=08347c362b23bfa562aa538c7cd63bf6799ff25f";
            HttpResponseMessage response = client.GetAsync(url).Result;

            if (response.IsSuccessStatusCode)
            {
                string content = response.Content.ReadAsStringAsync().Result;

                // Phân tích cú pháp JSON
                JObject json = JObject.Parse(content);

                // Truy cập vào trường dữ liệu "result" trong đối tượng "data"
                string result = json["data"]["result"].ToString();

                return result == "deliverable";
            }
            else
            {
                Console.WriteLine("Error: " + response.StatusCode);
                return false;
            }
        }

    }
}