   M S B A M L   `   `   `  ����%  !ICSharpCode.Data.EDMDesigner.Core]    WICSharpCode.Data.EDMDesigner.Core.Windows.EDMWizard.ChooseDatabaseConnectionUserControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      P LICSharpCode.Data.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS OICSharpCode.Data.Core.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null(datahttp://icsharpcode.net/data   5      .��5      � -   5          �Name$  grdConnection��5      $��5q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5	      $
��Auto �6   �� 5
      .+�5   
   �� $��3q�6   86Which database connection should your application use?6W   � 5   
   $��1��6    � ColumnDefinitions 5      �� 5      �� 5      $
��Auto �6#   .+�5      �� -   5        $��3q�5       �� SelectedItem 6"   �� *SelectedDatabase+��6L   �� *	Databases+��5      �� 5      .R�5      �� ��6$   �� *Name+5      5      �� 5      -   5        $��1��5      $��3q�6%   $��3q�60   .��6[   New Connection...6n   5      �� 5   
   $��2��6   $��3q�6!   Entity connection string:6G   �� 5    
   $��3��6   $��3q�6    �� TextWrapping$ WrapWithOverflow=�6*    �� 
IsReadOnly . ��6\   �� *EntityConnectionString+ �� Mode$ OneWay=�5!      5"      