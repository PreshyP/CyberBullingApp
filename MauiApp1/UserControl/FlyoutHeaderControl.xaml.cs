namespace MauiApp1.UserControl;

public partial class FlyoutHeaderControl : ContentView
{
	public FlyoutHeaderControl()
	{
		InitializeComponent();
		if (App.UserInfo != null)
		{
			lblUserName.Text = "Logge in as: " + App.UserInfo.UserName;
            lblUserEmail.Text = App.UserInfo.UserName.ToString(); // set email from API


            
		}
	}
}