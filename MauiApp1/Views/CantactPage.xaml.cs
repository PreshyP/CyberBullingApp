using MauiApp1.ViewModels;

namespace MauiApp1.Views
{
    public partial class CantactPage : ContentView
    {
        public CantactPage(LoginPageViewModels loginPageViewModels)
        {
            InitializeComponent(); // Ensure InitializeComponent method is called
            this.BindingContext = loginPageViewModels;
        }

        private void InitializeComponent()
        {
            throw new NotImplementedException();
        }
    }
}
