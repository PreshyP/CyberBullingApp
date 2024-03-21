//using CoreData;
//using MyLoginApp.Models;
using MauiApp1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MauiApp1.Services
{
    interface ILoginRepository
    {
        Task<UserInfo> Login(string username, string password);
    }
}
