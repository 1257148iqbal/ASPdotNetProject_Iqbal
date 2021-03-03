using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
//using Microsoft.AspNet.FriendlyUrls;

namespace ASPdotNetProject_Iqbal
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            //var settings = new FriendlyUrlSettings();
            //settings.AutoRedirectMode = RedirectMode.Permanent;
            //routes.EnableFriendlyUrls(settings);

            //RouteTable.Routes.MapPageRoute(
            //   routeName: "StudentInfo",
            //   routeUrl: "Trainer/{id}/Attendence",
            //   physicalFile: "~/ContentPages/StudentInfo.aspx"
            //   );

            //RouteTable.Routes.MapPageRoute(
            // routeName: "TraineeInfo",
            // routeUrl: "Trainer/{id}/Result",
            // physicalFile: "~/ContentPages/TraineeInformation.aspxx"
            // );

            ////Default Route
            //RouteTable.Routes.MapPageRoute(
            //    routeName: "IsDB",
            //    routeUrl: "",
            //    physicalFile: "~/ContentPages/TraineeReg.aspx"
            //    );

        }
    }
}
