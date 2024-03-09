using Kursach.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Kursach.Pages
{
    /// <summary>
    /// Логика взаимодействия для Authorization.xaml
    /// </summary>
    public partial class Authorization : Page
    {
        public Authorization()
        {
            InitializeComponent();
        }
        private void BthAuth_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var userLogin = loginTextBox.Text;
                var userPassword = passwordBox.Password;

                using (var context = new ChepotievEntities())
                {
                    var user = context.Users.FirstOrDefault(u => u.Login == userLogin && u.Password == userPassword);
                    if (user != null)
                    {
                        if (user.IDUserRole == 2)
                        {
                            MessageBox.Show("Добро пожаловать, пользователь!");
                            Classes.ClassFrame.frmObj.Navigate(new Pages.MainPage(user));

                        }
                        else if (user.IDUserRole == 1)
                        {
                            MessageBox.Show("Добро пожаловать, администратор!");
                            Classes.ClassFrame.frmObj.Navigate(new Pages.MainPage(user));
                        }
                    }
                    else
                    {
                        MessageBox.Show("Такого пользователя нет", "Ошибка при авторизации",
                            MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка: " + ex.Message, "Уведомление", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }
    }
}
