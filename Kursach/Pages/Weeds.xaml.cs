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
    /// Логика взаимодействия для Weeds.xaml
    /// </summary>
    public partial class Weeds : Page
    {
        Users userss;
        public Weeds(Users user)
        {
            InitializeComponent();
            userss = user;
            lvHead.ItemsSource = ChepotievEntities.GetContext().Flowers.Where(X => X.IDCategory == 4).ToList();
            if (user.IDUserRole == 2)
            {
                StPanel.Visibility = Visibility.Collapsed;
                Col1.Width = new GridLength(0);
            }
        }
        private void TxtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            string search = TxtSearch.Text;
            lvHead.ItemsSource = ChepotievEntities.GetContext().Flowers.Where(x => x.NameFlower.Contains(search) && x.IDCategory == 4).ToList();
        }

        private void AddFlowers_Click(object sender, RoutedEventArgs e)
        {
                NavigationService.Navigate(new AddFlowers(null));
        }

        private void DeleteFlowers_Click(object sender, RoutedEventArgs e)
        {
            var studentsForRemoving = lvHead.SelectedItems.Cast<Flowers>().ToList();

            if (MessageBox.Show($"Удалить {studentsForRemoving.Count()} " + $"упражнение?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                try
                {
                    ChepotievEntities.GetContext().Flowers.RemoveRange(studentsForRemoving);
                    ChepotievEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");
                    lvHead.ItemsSource = ChepotievEntities.GetContext().Flowers.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
        }

        private void Home_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new MainPage(null));
        }

        private void OneYear_Click(object sender, RoutedEventArgs e)
        {
            Classes.ClassFrame.frmObj.Navigate(new Pages.OneYear(userss));
        }

        private void TwoYear_Click(object sender, RoutedEventArgs e)
        {
            Classes.ClassFrame.frmObj.Navigate(new Pages.TwoYear(userss));
        }

        private void LongTern_Click(object sender, RoutedEventArgs e)
        {
            Classes.ClassFrame.frmObj.Navigate(new Pages.LongTerm(userss));
        }

        private void Weeds_Click(object sender, RoutedEventArgs e)
        {
            Classes.ClassFrame.frmObj.Navigate(new Pages.Weeds(userss));
        }

        private void Logout_Click(object sender, RoutedEventArgs e)
        {
            Classes.ClassFrame.frmObj.Navigate(new Pages.Authorization());
        }

        private void AddIzmFlowers_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddFlowers(lvHead.SelectedItem as Flowers));
        }
    }
}
