//using CoreData;
using MauiApp1.Models;
//using UserInfo = MauiApp1.Models.UserInfo;

namespace MauiApp1
{
    public partial class App : Application
    {
        public static  UserInfo UserInfo;
        public App()
        {
            InitializeComponent();

            MainPage = new AppShell();
        }
    }
}
