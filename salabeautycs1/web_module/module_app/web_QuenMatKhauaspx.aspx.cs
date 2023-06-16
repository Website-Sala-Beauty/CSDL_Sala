using Newtonsoft.Json.Linq;
using System;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Mail;
using System.Web.UI;

public partial class web_module_module_app_web_QuenMatKhauaspx : System.Web.UI.Page
{
    cls_Alert alert = new cls_Alert();
    dbcsdlDataContext db = new dbcsdlDataContext();
    cls_security md5 = new cls_security();

    public object JsonConvert { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void btnDanhNhap_ServerClick(object sender, EventArgs e)
    {
        // gửi mật khẩu mới về email     
        
        var mail = txtEmail.Value.Trim();
        if (checkExitEmailAsync(mail) == true)
        {
        var checkMail = from kh in db.tb_KhachHangs
                        where (kh.khachhang_gmail == mail) && kh.hidden == true
                        select kh;
        if (checkMail.Count() == 1)
        {
            Random rnd = new Random();
            string newPassword = rnd.Next(0, 1000000).ToString();
            //xác nhận mã
            string message = "Mật khẩu mới của bạn là: " + newPassword + " .Vui lòng xác nhận để đăng nhập vào hệ thống!";
            SendMail(mail, message);
            string passmd5 = md5.HashCode(newPassword);
            tb_KhachHang update = checkMail.First();
            update.khachhang_password = passmd5;
            db.SubmitChanges();
            ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Alert", "swal('Gửi Email thành công! Vui lòng xác nhận và đăng nhập','','success').then(function(){parent.location.href='/app-login';})", true);
        }
        else if (checkMail.Count() > 1)
        {
            alert.alert_Warning(Page, "Email bị trùng vui lòng kiểm tra lại!", "");
        }
        else
        {
            alert.alert_Warning(Page, "Email chưa được đăng kí tài khoản!", "");

        }
        }
        else
        {
            alert.alert_Warning(Page, "Email không tồn tại!", "");
        }
        
    }
    private bool SendMail(string email, string message)
    {
        if (email != "")
        {
            try
            {
                var fromAddress = "tinnhankhachhang@gmail.com";//  Email Address from where you send the mail 
                var toAddress = email;
                //var toAddress = "dangbichlai21@gmail.com";

                const string fromPassword = "jcstiaveptusqrxm";
                string subject, title;
                title = "Thông báo";
                subject = "<!DOCTYPE html><html><head><title></title></head><body ><div>" +
                "<h3 style=\"margin-top:0px; text-align:center; color:#029ada\">" + message + "</h3>" +
                "</div></body></html>";
                var smtp = new System.Net.Mail.SmtpClient();
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                    smtp.Timeout = 20000;
                }
                MailMessage mm = new MailMessage();
                mm.From = new MailAddress(fromAddress, "Sala Nail Beautyfull");
                mm.Subject = title;
                mm.To.Add(toAddress);
                mm.IsBodyHtml = true;
                mm.Body = subject;
                smtp.Send(mm);
                return true;
            }
            catch
            {
                return false;
            }
        }
        else
            return false;
    }
    // Dùng API hunter checkMail có tồn tại hay không

   
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