   M S B A M L   `   `   `  ����g  cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eetRclr-namespace:ICSharpCode.Core.Presentation;assembly=ICSharpCode.Core.PresentationICSharpCode.Core.Presentation  5      W SICSharpCode.AddInManager2, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullY1clr-namespace:ICSharpCode.AddInManager2.ViewModel#ICSharpCode.AddInManager2.ViewModel 5	      :   4ICSharpCode.AddInManager2.View.LicenseAcceptanceView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      acoreRclr-namespace:ICSharpCode.Core.Presentation;assembly=ICSharpCode.Core.Presentation    5      >d2http://schemas.microsoft.com/expression/blend/2008    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      Caimvm1clr-namespace:ICSharpCode.AddInManager2.ViewModel     5	        � WindowStartupLocation$  CenterOwner=�5      0   *ICSharpCode.Core.Presentation.GlobalStyles   DialogWindowStyle#��Z 5      $	��300��5      $	��480��5      $	��300��5      $	��300��5       � Title 5      5   /ICSharpCode.Core.Presentation.LocalizeExtension  *'%AddInManager2.LicenseAcceptance.Title+ � 	Resources 5       �� 
TargetType   ButtonStyle �� BasedOn   BoolToVisibility>  8ICSharpCode.AddInManager2.ViewModel.OpenHyperlinkCommand  OpenHyperlinkCommand  ListBoxItemTemplate � ColumnDefinitions �� Command	 �� CommandParameter
 �� Path��%�  '��       &	  ,     &	 C     &	 Z     7  �� 5   
   " ��5      # Z 5      �� 5   
   5        5   
   5      �� 5   
   .R�5      �  5      �� 5      $
��Auto �5      �� 5       .+�5"      �� $��4q�5#      .+�5$      �� $
��Bold"�5%      ��5&      �� *Id+�� 5'      �� 5(      8   	 5*      �� $
 
LicenseUrl�.�65   .�5+   	   �� ��5,   	     *(&AddInManager2.Details.ViewLicenseTerms+5-   	   5.      5/      �� 50      $��1��51      $��4q�52      $��CharacterEllipsis=�53      $
��Wrap=�54      $��40��55      ��56      �� *	Summary+57      58      59      .��5:      �  � RowDefinitions 5;   
   �� 5<      $
��Auto �5=      �� 5>      �� 5?      $
��Auto �5@      �� 5A      $
��Auto �5B      .+�5D   
   �� $
��4, 2q�5E      .+�5F      �� $
��Wrap=�5H      y�5G      �� $
 HasMultiplePackages� �� 	Converter# [  ��5I        *75AddInManager2.LicenseAcceptance.Introduction.Packages+�� 5J      $
��Wrap=�5L      y�5K      �� $
 HasOnePackage�# [  ��5M        *64AddInManager2.LicenseAcceptance.Introduction.Package+5N      �� 5O   
   $��1��5P      $��1q�5Q      #��� ��5R      ._�5S      �� $
��Auto=�5T      $��Disabled=�5U      .��5V      �� #��� ��5W      #��[ 5X      ��5Y      �� $
 Packages�5Z      5[      �� 5\   
   $��2��5]      $��4q�5^      .+�5_      �� $
��Wrap=�5a      y�5`      �� $
 HasMultiplePackages�# [  ��5b        5c      
   Key$: 4AddInManager2.LicenseAcceptance.Explanation.Packages��6-   5e      �� 5f      $
��Wrap=�5h      y�5g      �� $
 HasOnePackage�# [  ��5i        5j      $9 3AddInManager2.LicenseAcceptance.Explanation.Package��6-   5l      5m      �� 5n   
   $��3��5o      $��4q�5p       �� Orientation$ 
Horizontal=�5q      $��Right=�5r      .+�5s      ��  �� IsCancel . $��0,0,4,0q�5v      ��5t        $3 -AddInManager2.LicenseAcceptance.DeclineButton��   UsesAccessors . 5v      �� 5w      -   5        ��5x        $2 ,AddInManager2.LicenseAcceptance.AcceptButton�� . 5y      5z      5{      5|      