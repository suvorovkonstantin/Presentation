using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity;
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

namespace SQLite_template01
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        AppContex db;

        bool Datagrid_IsModified = false;
        
        public MainWindow()
        {
            InitializeComponent();
            Load();
        }
        
        private void Button_Click(object sender, RoutedEventArgs e) { Refresh(); }
                
        private void Button_Click_1(object sender, RoutedEventArgs e) { DropItem(); }
        
        private void Button_Click_2(object sender, RoutedEventArgs e) { Save(); }


        public void Refresh()  
        {
            if (Datagrid_IsModified == true)
                switch (MessageBox.Show(this, "Data was modified. Save changes?", "Save", MessageBoxButton.YesNoCancel))
                {
                    case MessageBoxResult.Yes:
                        {
                            Save();
                            Datagrid_IsModified = false;
                            break;
                        }
                    case MessageBoxResult.No:
                        {
                            Load();
                            Datagrid_IsModified = false;
                            break;
                        }
                }

        }

        private void Load()
        {
            try
            {
                db = new AppContex();

                db.Configuration.ValidateOnSaveEnabled = false;
                db.Emlpoyees.Load();
                datagrid1.ItemsSource = db.Emlpoyees.Local.ToBindingList();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void DropItem()
        {
            try
            {
                if (datagrid1.SelectedItem == null) return;
                var drop_items = datagrid1.SelectedItems;
                for(int i = drop_items.Count - 1; i>= 0; --i)
                    db.Emlpoyees.Remove(drop_items[i] as Employee);
                Datagrid_IsModified = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void Save()
        {
            try
            {
                db.SaveChanges();
                MessageBox.Show("Changes saved to the database.");
                Load();
                Datagrid_IsModified = false;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }


        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (Datagrid_IsModified == true)
                switch (MessageBox.Show(this, "Data was modified. Save changes?", "Save", MessageBoxButton.YesNoCancel))
                {
                    case MessageBoxResult.Yes:
                        {
                            Save();
                            e.Cancel = false;
                            break;
                        }
                    case MessageBoxResult.No:
                        {
                            e.Cancel = false;
                            break;
                        }
                }
        }

        private void datagrid1_BeginningEdit(object sender, DataGridBeginningEditEventArgs e){ Datagrid_IsModified = true; }

    }
}
