using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using Microsoft.AspNet.FriendlyUrls;

namespace ASPdotNetProject_Iqbal
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            //BundleConfig.RegisterBundles(BundleTable.Bundles);

            RouteTable.Routes.EnableFriendlyUrls();

            RouteTable.Routes.MapPageRoute(
                 routeName: "StudentInfo",
                 routeUrl: "Trainer/{id}/Attendence",
                 physicalFile: "~/ContentPages/StudentInfo.aspx"
                 );

            RouteTable.Routes.MapPageRoute(
             routeName: "TraineeInfo",
             routeUrl: "Trainer/{id}/Result",
             physicalFile: "~/ContentPages/TraineeInformation.aspxx"
             );

            //Default Route
            RouteTable.Routes.MapPageRoute(
                routeName: "IsDB",
                routeUrl: "",
                physicalFile: "~/Registration.aspx"
                );
        }
    }
}