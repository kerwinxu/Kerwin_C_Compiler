   M S B A M L   `   `   `  ����S  OICSharpCode.Data.Core.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:ICSharpCode.Data.Core.UI.UserControls%ICSharpCode.Data.Core.UI.UserControls  5      =    7ICSharpCode.Data.Core.UI.Windows.ConnectionWizardWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      P LICSharpCode.Data.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null(datahttp://icsharpcode.net/data    5      HuserControls3clr-namespace:ICSharpCode.Data.Core.UI.UserControls    5      -   5          �Name$
  This��5      #��� ��5       � Title$! Add new database connection��5      $	��400��6)   $	��600��66    � WindowStartupLocation$ CenterOwner=�6B    � 	Resources 5	       �� MergedDictionaries �� Source�� 5
   
    5      �� 5      $$ ../Images/ImageDictionary.xaml?�6%   %    5      .��5      � $��5q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      .+�5!   
   �� 
�������._�5"      �  5#      �� 5$      $
��Auto �6'   �� 5%      .+�5(      �� $��	5,5,10,10q�6   $��16��6+   $��16��66      DatabaseConnectImage#��[  6B   $��Center=�6q   �� 5)      $��1��6   $��
10,5,10,10q�6,   $
��Bold"�6@   $��Center=�6R   Add new database connection6�   5*      5+      �� 5-   
   $��1��6   $��3q�6!   Database driver:6>   �� 5.   
   -   5         ��Name$ cboDatabaseDriver��5.      $��1��6.   $��1��6;   $��2��6K   $��3q�6_   :  4ICSharpCode.Data.Core.DatabaseObjects.DatabaseDriver	   DatabaseDrivers#��Z	 5/      
 �� SelectedItem
 5.   j   �� *SelectedDatabaseDriver+ �� ElementName$
 This����50      �� 51      .R�52      �� ��6    �� *Name+53      55      �� 57   
   $��2��6   $��3q�6!   Data source:6:   � 58   
   $��2��6   $��1��6    59      �� 5:      �� 5;      $
��Auto �6#   .+�5>      �� -   5        $ cboDatasources��5>      $��3q�6/    �� 
IsEditable . 
 5?      �� *SelectedDatasource+$
 This����6O   �� *$"SelectedDatabaseDriver.Datasources+$
 This����5@      �� 5A      .R�5B      �� ��6$   �� *Name+5C      5E      �� 5F      -   5        $��1��5F      $��3q�6%   $��Auto Discover��60   6H   5G      �� 5I   
   $��3��6   $��1��6&   $��3q�66   ��6A   �� *!SelectedDatasource.ControlPanel+$
 This���� 5K   
   -   5         ��Name$ 
btnConnect��5K      $��4��5L      $��1��5M      $��3q�5N      $��Connect��5O      $��Right=�5P      {�5Q      �� *
CanConnect+$
 This��5R      �� 5T   
   $��5��6   $��3q�6!   	Database:67   �� 5V   
   -   5        $ cboDatabases��5V      $��5��6)   $��1��66   $��3q�6F   
 6Q   �� *SelectedDatabase+$
 This����5W      �� *SelectedDatasource.Databases+$
 This����5X      �� 5Y      .R�5Z      �� ��6    �� *Name+5[      5]      9� 5_   
   $��6��6   $��1��6    $��2q�60   $��Connection String��6;   $	��Top=�6V    9� 
IsExpanded 5`      �� *31SelectedDatasource.UseUserDefinedConnectionString+$
 This��.��5a      ��  �� MinLines$ 5��6h   ��6   �� *0.SelectedDatasource.UserDefinedConnectionString+$
 This��6h   5b      9   3ICSharpCode.Data.Core.UI.UserControls.LoadingCircle  5d   
   $��7��6%   $��3q�62      IsActivated 6=   �� *	IsLoading+$
 This���� 5e   
   $��7��6   $��1��6"    �� Orientation$ 
Horizontal=�62   $��Right=�6K   .+�5f      �� -   5        $ btnAdd��5f      $��3q�6%   $��3q�60   {�.  .��6c   Add6h   �� 5g      -   5        $��3q�5g       �� IsCancel . $��3q�60   .��6T   Cancel6\   5h      5i      5j      