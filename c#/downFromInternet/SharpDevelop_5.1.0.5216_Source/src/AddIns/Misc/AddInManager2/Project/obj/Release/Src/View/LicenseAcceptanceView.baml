   M S B A M L   `   `   `  ���� g  cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eetRclr-namespace:ICSharpCode.Core.Presentation;assembly=ICSharpCode.Core.PresentationICSharpCode.Core.Presentation  W SICSharpCode.AddInManager2, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullY1clr-namespace:ICSharpCode.AddInManager2.ViewModel#ICSharpCode.AddInManager2.ViewModel :   4ICSharpCode.AddInManager2.View.LicenseAcceptanceView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    acoreRclr-namespace:ICSharpCode.Core.Presentation;assembly=ICSharpCode.Core.Presentation    >d2http://schemas.microsoft.com/expression/blend/2008    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     Caimvm1clr-namespace:ICSharpCode.AddInManager2.ViewModel       � WindowStartupLocation$  CenterOwner=�0   *ICSharpCode.Core.Presentation.GlobalStyles   DialogWindowStyle#��Z $	��300��$	��480��$	��300��$	��300�� � Title 5   /ICSharpCode.Core.Presentation.LocalizeExtension  *'%AddInManager2.LicenseAcceptance.Title+ � 	Resources  �� 
TargetType   ButtonStyle �� BasedOn   BoolToVisibility>  8ICSharpCode.AddInManager2.ViewModel.OpenHyperlinkCommand  OpenHyperlinkCommand  ListBoxItemTemplate � ColumnDefinitions �� Command	 �� CommandParameter
 �� Path��%^  '��       &	       &	      &	      7  �� " ��# Z ��   �� .R��  �� $
��Auto ��� .+��� $��4q�.+��� $
��Bold"����� *Id+�� �� 8   	 �� $
 
LicenseUrl�.�.��� ��  *(&AddInManager2.Details.ViewLicenseTerms+�� $��1��$��4q�$��CharacterEllipsis=�$
��Wrap=�$��40������ *	Summary+.���  � RowDefinitions �� $
��Auto ��� �� $
��Auto ��� $
��Auto �.+��� $
��4, 2q�.+��� $
��Wrap=�y��� $
 HasMultiplePackages� �� 	Converter# [  ��  *75AddInManager2.LicenseAcceptance.Introduction.Packages+�� $
��Wrap=�y��� $
 HasOnePackage�# [  ��  *64AddInManager2.LicenseAcceptance.Introduction.Package+�� $��1��$��1q�#��� ��._��� $
��Auto=�$��Disabled=�.���� #��� ��#��[ ���� $
 Packages��� $��2��$��4q�.+��� $
��Wrap=�y��� $
 HasMultiplePackages�# [  ��  
   Key$: 4AddInManager2.LicenseAcceptance.Explanation.Packages���� $
��Wrap=�y��� $
 HasOnePackage�# [  ��  $9 3AddInManager2.LicenseAcceptance.Explanation.Package���� $��3��$��4q� �� Orientation$ 
Horizontal=�$��Right=�.+���  �� IsCancel . $��0,0,4,0q���  $3 -AddInManager2.LicenseAcceptance.DeclineButton��   UsesAccessors . �� -   ��  $2 ,AddInManager2.LicenseAcceptance.AcceptButton�� . 