   M S B A M L   `   `   `  ����J  FSQLite_template, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:SQLite_template01SQLite_template01  5   	   "    SQLite_template01.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:SQLite_template01     5   	   -   5          �Name$  MainWindow1��5   	    � Title$ SQLite Manager��5   	   $	��350��6    $	��525��6-    � DataContext 5	      !  SQLite_template01.AppContex  5
   
   .��5      � .+�5   
   �� -   5         ��Name$ Refresh_button��5      $��Refresh��6)   $
��Left=�6;   $��	10,10,0,0q�6V   $	��Top=�6i   $��75��6�   6�   �� 5   
   -   5        $ Drop_button��5      $
��Drop��6&   $
��Left=�65   $��	91,10,0,0q�6P   $	��Top=�6c   $��75��6{   6�   �� 5   
   -   5        $ Save_button��5      $
��Save��6&   $
��Left=�65   $��
171,10,0,0q�6P   $	��Top=�6d   $��75��6|   6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 	datagrid1��5   .      CanUserDeleteRows .  $��0,35,0,0q�6A      AutoGenerateColumns .  ��6{   ��  �� Mode$ OneWay=�   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$
	 Name��6>   
   Width5  /System.Windows.Controls.DataGridLengthConverter$

 Auto 6L   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Name+6L     5      $	 Surname��6A   $

 Auto 6R    6%   �� *	Surname+6R     5      $	 Email��6?   $

 Auto 6N    6%   �� *Email+6N     5      $	 Phone��6?   $

 Auto 6N    6%   �� *Phone+6N   5      5      5      