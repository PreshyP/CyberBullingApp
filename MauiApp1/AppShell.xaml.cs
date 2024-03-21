using MauiApp1.ViewModels;
using MauiApp1.Views;

namespace MauiApp1
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            this.BindingContext = new AppShellViewModels();
            Routing.RegisterRoute(nameof(HomePage), typeof(HomePage));
        }
    }
}
