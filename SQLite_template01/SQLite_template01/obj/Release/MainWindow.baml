   M S B A M L   `   `   `  ���� J  FSQLite_template, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:SQLite_template01SQLite_template01  "    SQLite_template01.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     1localclr-namespace:SQLite_template01     -     �Name$  MainWindow1�� � Title$ SQLite Manager��$	��350��$	��525�� � DataContext !  SQLite_template01.AppContex  .��� .+��� -    ��Name$ Refresh_button��$��Refresh��$
��Left=�$��	10,10,0,0q�$	��Top=�$��75���� -   $ Drop_button��$
��Drop��$
��Left=�$��	91,10,0,0q�$	��Top=�$��75���� -   $ Save_button��$
��Save��$
��Left=�$��
171,10,0,0q�$	��Top=�$��75��&   System.Windows.Controls.DataGrid  -     Name$ 	datagrid1��   CanUserDeleteRows .  $��0,35,0,0q�   AutoGenerateColumns .  ����  �� Mode$ OneWay=�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn	   Header$
	 Name��
   Width5  /System.Windows.Controls.DataGridLengthConverter$

 Auto 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Name+  $	 Surname��$

 Auto  �� *	Surname+  $	 Email��$

 Auto  �� *Email+  $	 Phone��$

 Auto  �� *Phone+