   M S B A M L   `   `   `  ����O  KPackageManagement, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullM+clr-namespace:ICSharpCode.PackageManagementICSharpCode.PackageManagement  5      [2clr-namespace:ICSharpCode.PackageManagement.Design$ICSharpCode.PackageManagement.Design  5      G    AICSharpCode.PackageManagement.RegisteredPackageSourcesUserControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      >d2http://schemas.microsoft.com/expression/blend/2008    5      Hmc;http://schemas.openxmlformats.org/markup-compatibility/2006    5      8pm+clr-namespace:ICSharpCode.PackageManagement    5      @pmd2clr-namespace:ICSharpCode.PackageManagement.Design    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      .��5      �   � 	Resources  5         ListBoxItemStyle �� 
TargetType �� 	Resources �� Color �� Property �� Value �� Triggers P� Property P� Value   PackageSourceListBoxTemplate	 ��Name
 �� Path d� 	IsChecked��%v  &	        &	 D    �� 5      " ��5       5      ���� 5      # � ��5      (��       5      *SystemColors.ControlBrushKey+)5      5      .�5      ��  � ��
 �����5       5      P� 5       �@��AlternationIndex$ 0��5       . �5!      ��  � ��
 �����5#      5$      5&      �� 5(      .R�5)      �� $	 PackageSourceStackPanel��5*      $��4q�5+      .+�5,      �� ��5-      �� $

 Name� 5.      �� $
 	IsEnabled��� 5/      �� 50      .�6   .�51   	   �� ��6   �� $
 	SourceUrl�52   	   53      54      55      56       � ColumnDefinitions 58      �� 59      �� 5:      $
��Auto �6    � RowDefinitions 5<      �� 5=      �� 5>      $
��Auto �6   .+�5@      �� $��0��5A      $��Stretch=�5B       �� AlternationCount$ 2��5C      4   .ICSharpCode.PackageManagement.ListBoxBehaviour%   IsSelectedItemScrolledIntoView . #��[  5E      #��[ 5F      ��5G      �� $
 PackageSourceViewModels� �� SelectedItem 5H      �� $$
 SelectedPackageSourceViewModel�� 5I      $��1��5J      $��4q�5K       5L      �� 5M      $
��Auto �6   �� 5N       5P      �� 5Q      �� 5R      .+�5T      �� $��0��5U      $��0��5V      $��4q�5W      $��Name:��5X      �� 5Y      $��0��5Z      $��1��5[      $
��4, 2q�5]      ��5\      �� $
 NewPackageSourceName� �� UpdateSourceTrigger$ PropertyChanged=�5]      �� 5^      $��1��5_      $��0��5`      $��4q�5a      $��Source:��5b      �� 5c      $��1��5d      $��1��5e      $	��4,2q�5g      ��5f      �� $
 NewPackageSourceUrl�$ PropertyChanged=�5g      5h      �� 5i      $��1��5j      $��0��5k      .+�5l      �� $��Move Up��5m      $
��4, 2q�5o      $
��7, 0q�5p      ��5n      �� $ 
 MovePackageSourceUpCommand�5p      �� 5q      $��	Move Down��5r      $
��4, 2q�5t      $
��7, 0q�5u      ��5s      �� $"
 MovePackageSourceDownCommand�5u      �� 5v      $��Remove��5w      $
��4, 2q�5y      $
��7, 0q�5z      ��5x      �� $ 
 RemovePackageSourceCommand�5z      5{      �� 5|      $��1��5}      $��1��5~      .+�5      �� $	��Add��5�      $��
4, 6, 4, 4q�5�      $
��7, 0q�5�      ��5�      �� $
 AddPackageSourceCommand�5�      �� 5�      $	��...��5�      $
��Left=�5�      $
��4, 4q�5�      $
��7, 0q�5�      ��5�      �� $ 
 BrowsePackageFolderCommand�5�      5�      5�      5�      