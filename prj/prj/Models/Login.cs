using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace prj.Models
{
    public class Login
    {

        [Required(ErrorMessage = "hãy nhập tài khoản")]
        public string email { set; get; }
        [Required(ErrorMessage = "hãy nhập mật khẩu")]
        public string PassWord { set; get; }
        public bool RememberMe { set; get; }
    }
}