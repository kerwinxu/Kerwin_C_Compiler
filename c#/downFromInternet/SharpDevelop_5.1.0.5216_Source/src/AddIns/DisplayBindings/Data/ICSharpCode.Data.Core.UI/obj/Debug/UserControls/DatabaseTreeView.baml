   M S B A M L   `   `   `  ����S  OICSharpCode.Data.Core.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:ICSharpCode.Data.Core.UI.UserControls%ICSharpCode.Data.Core.UI.UserControls  5      <    6ICSharpCode.Data.Core.UI.UserControls.DatabaseTreeView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      P LICSharpCode.Data.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null(datahttp://icsharpcode.net/data    5      Alocal3clr-namespace:ICSharpCode.Data.Core.UI.UserControls    5      -   5          R�Name$
  This��5       � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5	      �� 5
      $$ DatabaseTreeViewResources.xaml?�6%   %    5      .@�5      Q�  (  $DatabaseTreeViewDataTemplateSelector#��[  6M   ��6   �� *Database.Tables+ �� ElementName$
 This����5   
   � 5       � ColumnDefinitions 5      �� 5      $
��Auto �6'   �� 5      .+�5      �� -   5        $��2q�5       d� 	IsChecked$
 TrueY�6B   
 � Tag 6S   �� *Database.Tables+$
 This���� 5      $��1��6   $��2q�6,   Tables6?   5      5      Q� 5      #��[  6L   ��6   �� *Database.Views+$
 This����5   
   � 5       5      �� 5       $
��Auto �6'   �� 5!      .+�5$      �� -   5        $��2q�5$      $
 TrueY�6B    6S   �� *Database.Views+$
 This���� 5%      $��1��6   $��2q�6,   Views6>   5&      5(      Q� 5)      #��[  6Q   ��6   �� *Database.Procedures+$
 This����5*   
   � 5+       5,      �� 5-      $
��Auto �6'   �� 5.      .+�51      �� -   5        $��2q�51      $
 TrueY�6B    6S   �� *Database.Procedures+$
 This���� 52      $��1��6   $��2q�6,   
Procedures6C   53      55      56      