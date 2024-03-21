//using CoreData;
//using CoreImage;
using MauiApp1.Models;
//using MetalPerformanceShadersGraph;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Json;
using System.Text;
using System.Threading.Tasks;

namespace MauiApp1.Services
{
    public class LoginService : ILoginRepository
    {
        public async Task<UserInfo> Login(string username, string password)
        {
            try
            {
                if (Connectivity.Current.NetworkAccess == NetworkAccess.Internet)
                {
                    var userInfo = new UserInfo();
                    var client = new HttpClient();
                    string url = "http://192.168.61.40.8099/api/userIfoes/LoginUser/" + username + "/" + password;
                    client.BaseAddress = new Uri(url);
                    HttpResponseMessage response = await client.GetAsync("");
                    if (response.IsSuccessStatusCode)
                    {
                        userInfo = await response.Content.ReadFromJsonAsync<UserInfo>();
                        return await Task.FromResult(userInfo);

                    }
                    else
                    {
                        return null;
                    }

                }
                else
                {
                    return null;
                }

                //throw new NotImplementedException();
            
            
            }
            catch (Exception ex)
            {
              
                Console.WriteLine($"An error occurred during login: {ex.Message}");
                return null;
            }
        }
    }
}
