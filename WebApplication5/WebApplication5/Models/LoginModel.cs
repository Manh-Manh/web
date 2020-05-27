using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


namespace WebApplication5.Models
{
    public class LoginModel
    {
        [Required(ErrorMessage = "hãy nhập tài khoản")]
        public string UserName { set; get; }
        [Required(ErrorMessage = "hãy nhập mật khẩu")]
        public string PassWord { set; get; }
        public bool RememberMe { set; get; }
    }
}