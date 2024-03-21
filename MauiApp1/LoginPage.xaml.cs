using MauiApp1.ViewModels;

namespace MauiApp1;

public partial class LoginPage : ContentPage
{
	public LoginPage(LoginPageViewModels loginPageViewModels)
	{
		InitializeComponent();
		this.BindingContext = loginPageViewModels;
	}
}