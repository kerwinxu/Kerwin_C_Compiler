   M S B A M L   `   `   `  ����b  ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eemLclr-namespace:ICSharpCode.SharpDevelop.Gui;assembly=ICSharpCode.SharpDevelopICSharpCode.SharpDevelop.Gui  5      �Yclr-namespace:ICSharpCode.SharpDevelop.Gui.OptionPanels;assembly=ICSharpCode.SharpDevelop)ICSharpCode.SharpDevelop.Gui.OptionPanels  5       
AspNet.Mvc3   -ICSharpCode.AspNet.Mvc.WebProjectOptionsPanel   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee5core(http://icsharpcode.net/sharpdevelop/core    5      j fICSharpCode.SharpDevelop.Widgets, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee9widgets+http://icsharpcode.net/sharpdevelop/widgets  5      VguiLclr-namespace:ICSharpCode.SharpDevelop.Gui;assembly=ICSharpCode.SharpDevelop  5      goptionsYclr-namespace:ICSharpCode.SharpDevelop.Gui.OptionPanels;assembly=ICSharpCode.SharpDevelop  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5	      $
��Auto��5
      $
��Auto��6   .��5      <  6ICSharpCode.SharpDevelop.Widgets.StackPanelWithSpacing      SpaceBetweenItems$  3Q�6!   .+�5        $  3Q�6"   .+�5      	� -   5         	�Name$ UseIISExpress��5       d� 	IsChecked$ FalseY�5       	� 	GroupName$ 
WebProject��5      ��5      5  /ICSharpCode.Core.Presentation.LocalizeExtension  *20ICSharpCode.WebProjectOptionsPanel.UseIISExpress+� 5      -   5         �Name$ IISExpressGroup��5   
   $��10, 3q�5   
   {�.  $	��Top=�5   
    � ColumnDefinitions 5      �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5      �� $��0,0,5,0q�6O   ��6     *)'ICSharpCode.WebProjectOptionsPanel.Port+6O   �� 5      -   5         ��Name$ PortTextBox��5      $��1��6   $
��8080��5   >   5      5       5!        5#      $  3Q�6"   .+�5$      	� -   5        $ UseLocalIIS��5'      $ FalseY�5%      $ 
WebProject��5&      ��5)        *0.ICSharpCode.WebProjectOptionsPanel.UseLocalIIS+� 5*      -   5        $ LocalIISGroup��5,   
   $��10, 3q�5*   
   {�.  $	��Top=�5-   
    5.      �� 5/      $
��Auto �6   �� 50      $
��Auto �6   .+�52      �� $��Center=�53      $��0,0,5,0q�6!   $��1��54      $
��Wrap=�55      ��56        */-ICSharpCode.WebProjectOptionsPanel.ProjectUrl+�� 57      -   5        $ 
ProjectUrl��5:      $��1��58      $��1��59      $	��250��5<      5=      5>      �� 5?      -   5        $��StatusLabel��5E      
���  ��$��	Underline{�5A      $��12(�5B      $
��Bold"�5C      $
��Wrap=�5D      5E      � 5F       5G      �� 5H      $
��Auto �6   �� 5I      $
��Auto �6   .+�5K      �� -   5        $"��CreateVirtualDirectoryButton��5P      {�.  $��0,2,0,2q�5M      0  *ICSharpCode.Core.Presentation.GlobalStyles   ButtonStyle#��Z 5N      $
��Left=�5O      ��5Q        *53ICSharpCode.WebProjectOptionsPanel.CreateVirtualDir+5R      �� 5S      -	   5        $��ClearWebServerButton��5W      $��1��5T      $��0,2,2,2q�5U      #��Z 5V      $
��Left=�5X      ��5Y        *;9ICSharpCode.WebProjectOptionsPanel.DisableWebServerButton+5Z      5[      5\      5]      