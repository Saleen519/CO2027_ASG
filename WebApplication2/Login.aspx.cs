using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;


namespace WebApplication2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //create a dbcontext that specified the connection string
            var identityDbContext = new IdentityDbContext("db_1921760_co5027_asg");
            //create role store and role manager
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            //create user
            var user = new IdentityUser() { UserName = txtRegEmail.Text, Email = txtRegEmail.Text };
            IdentityResult result = manager.Create(user, txtRegPassword.Text);
            IdentityRole adminRole = new IdentityRole("admin");
            roleManager.Create(adminRole);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "admin");
                manager.Update(user);
                litRegisterError.Text = "Registration successful";
            }
            else
            {
                litRegisterError.Text = "An error has occurred: " + result.Errors.FirstOrDefault();
            }
        }

            protected void BtnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("db_1921760_co5027_asg");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtLoginEmail.Text, txtLoginPassword.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                //todo: log user in / instruct user to log in
            }
            else
            {
                litLoginError.Text = "Invalid username or password.";
            }
        }

        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
            //Note: user is automatically redirected if trying to access another page
        }
    

          internal class AuthenticationProperties
          {
            public AuthenticationProperties()
          {
        }
    }
}