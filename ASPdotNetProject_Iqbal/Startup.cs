using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ASPdotNetProject_Iqbal.Startup))]
namespace ASPdotNetProject_Iqbal
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
