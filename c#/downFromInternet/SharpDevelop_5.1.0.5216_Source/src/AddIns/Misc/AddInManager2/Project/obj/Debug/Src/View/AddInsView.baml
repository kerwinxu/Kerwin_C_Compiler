   M S B A M L   `   `   `  ����g  cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eetRclr-namespace:ICSharpCode.Core.Presentation;assembly=ICSharpCode.Core.PresentationICSharpCode.Core.Presentation  5      W SICSharpCode.AddInManager2, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullO,clr-namespace:ICSharpCode.AddInManager2.ViewICSharpCode.AddInManager2.View 5      Y1clr-namespace:ICSharpCode.AddInManager2.ViewModel#ICSharpCode.AddInManager2.ViewModel 5	      /   )ICSharpCode.AddInManager2.View.AddInsView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      acoreRclr-namespace:ICSharpCode.Core.Presentation;assembly=ICSharpCode.Core.Presentation    5      >d2http://schemas.microsoft.com/expression/blend/2008    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @aimview,clr-namespace:ICSharpCode.AddInManager2.View     5      Caimvm1clr-namespace:ICSharpCode.AddInManager2.ViewModel     5	        � 	Resources  5      >  8ICSharpCode.AddInManager2.ViewModel.OpenHyperlinkCommand   OpenHyperlinkCommand  DefaultPackageIcon �� 	UriSource  SmallPackageIcon  SDPackageIcon  SmallExternalAddInIcon  InstalledTickIcon  
SearchIcon  BoolToVisibility % !PackageSourceComboBoxItemTemplate �� Path �� 
TargetType �� Triggers �� Binding �� Value �� Property �� Value 	 AddInImageStyle	 �� TargetNullValue 
 AddInOnlineStateImageStyle
 �� 	Converter   AddInExternalStateImageStyle  InstalledTickImageStyle ^� 
Conditions �� Binding �� Value  addInListButtonStyle0   *ICSharpCode.Core.Presentation.GlobalStyles   ButtonStyle �� BasedOn �� RelativeSource �� AncestorType  addInDetailsButtonStyle  PackageSourceComboBoxStyle $  packageListBoxItemContainerStyle �� Mode  PackageListBoxItemTemplate � ColumnDefinitions � RowDefinitions ��Name �� Orientation ��Name �� 	IsDefault5   /ICSharpCode.Core.Presentation.LocalizeExtension �� Triggers �� 
TargetName  PackageTemplate �� StringFormat �� Command �� CommandParameter  allPackagesListBoxStyle��%\+  &	        &	      &	 �     &	 �     &	 r    &	 �    &	 Z    &	 �    &	 �    &		 �    7  7  &	
 x    7  7  &	 }    7  7  &	 �    7  &	 �    &	 a
    &	 J    &	 k    &	 �    7 	 7 
 7  7  7  7  7  7  7  7  7  &	 s    7  7  7  7  7  7  7   7  7   7  7   7  7  7  &	 N)      5      6   �� 5      $Z Tpack://application:,,,/ICSharpCode.AddInManager2;component/Resources/packageicon.png?�5      �� 5      $` Zpack://application:,,,/ICSharpCode.AddInManager2;component/Resources/packageicon_small.png?�5      �� 5      $] Wpack://application:,,,/ICSharpCode.AddInManager2;component/Resources/sd_packageicon.png?�5      �� 5      $c ]pack://application:,,,/ICSharpCode.AddInManager2;component/Resources/external_addin_small.png?�5      �� 5      $U Opack://application:,,,/ICSharpCode.AddInManager2;component/Resources/accept.png?�5      �� 5      $X Rpack://application:,,,/ICSharpCode.AddInManager2;component/Resources/magnifier.png?�5      �� 5      6!   �� 5      .R�5      �� ��6   �� $ NameWithHighlight���5       �� 5!      " ��6    5"      �� 5#   	    6   �� *HasHighlightCount+ True6;   .a�5$   
   ��  � ��$
 Bold"�6'   5%   
   5'      5)      5*      �� 5,      " ��6"    5-      �� 5.       6   �� *	IsOffline+	 False60   .a�5/      ��  � �� 6    �� $ IconUrl�8	   50      �� 51       6   �� *	IsOffline+ True60   .a�52      ��  � �� 6    �� $ IconUrl�8	  53      �� 54       6   �� *	IsEnabled+	 False60   .a�55      ��  �@J�Opacity$	 0.5Q�6!   56      58      �� 5:      " ��6-   .�5;      ��  � ��8   6   �� 5<       � y� 6"   �� $ HasNuGetConnection�8
   5=      �� 5>       6   �� *	IsEnabled+	 False60   .a�5?      ��  �@J�Opacity$	 0.5Q�6!   5@      5B      �� 5D      " ��6/   .�5E      ��  � ��8   6   �� 5F       � y� 6"   �� $ IsExternallyReferenced�8
   5G      �� 5H       6   �� *	IsEnabled+	 False60   .a�5I      ��  �@J�Opacity$	 0.5Q�6!   5J      5L      �� 5N      " ��6*   .�5O      ��  � ��8   6   �� 5P       � y�$ 	Collapsed=�6"    5Q      ^� 5R       5S      �� 5T       6   �� *	IsOffline+	 False60   �� 5U       6   �� *IsInstalled+ True62   .0�5W      ��  � y�$ Visible=�6$   5X      5Z      �� 5\      " ��6'   # Z 6D   .�5]      ��  � y�$ 	Collapsed=�6"   �� 5^       � ��$
 Left=�6+   �� 5_       � ��$ 2,2,2,2q�6    5`      ^� 5a       5b      �� 5c       6   �� $ 
IsSelected� �� " �� True6y   �� 5d       6   ��  �� *Self+$ 	IsEnabled� True6[   .0�5f      ��  � y�$ Visible=�6$   5g      5i      �� 5k      " ��6*   # Z 6G   .�5l      ��  � y�$ 	Collapsed=�6"    5m      �� 5n       6   ��  �� *Self+$ 	IsEnabled� True6[   .a�5o      ��  � y�$ Visible=�6$   5p      5r      �� 5t      " ��6-   5z      �� 5|      " ��63   .�5}      ��  �@��
IsSelected 6"   �� $ TwoWay=�$ 
IsSelected�5~      �� 5�      .R�5�      �  5�      �� 5�      $��60 �6   �� 5�      $��* �6   .+�5�      �� $��0��5�      $��32��5�      $	��Top=�5�      8��  5�      �� 5�      $��0��5�      $��16��5�      $��36,0,0,0q�5�      $	��Top=�5�      8�� 5�      �� 5�      $��0��5�      $��16��5�      $��36,0,0,0q�5�      $	��Top=�5�      8�� 5�      �� 5�      $��0��5�      $	��Top=�5�      $��Right=�5�      $��16��5�      $��16��5�      8�� $��36,0,0,0q�5�      � 5�      $��1��6   $��0,0,0,0q�6   $
��Left=�6,    5�      �� 5�      $
��Auto �6   �� 5�      $
��Auto �6   .+�5�      �� $��0��6   $��4,4,4,4q�6   $
��Left=�60   .+�5�      �� $ nameTextBlock��5�      $
��Bold"�5�      $
��Wrap=�5�      $��0,0,0,6q�5�      ��5�      �� $
 Name�5�      �� 5�      $ summaryTextBlock��5�      $
��Wrap=�5�      $��CharacterEllipsis=�5�      ��5�      �� $ Summary�5�      5�      �� 5�      $��1��6   $��2,2,2,2q�6   $ 
Horizontal=�60   .+�5�      �� $ addPackageButton��5�       . 8�� ��5�        *AddInManager.ActionInstall+��5�      �� $ AddPackageCommand�5�      �� 5�      $ updatePackageButton��5�       . 8�� ��5�        *AddInManager.ActionUpdate+��5�      �� $ UpdatePackageCommand�5�      �� 5�      $ disablePackageButton��5�       . 8�� ��5�        *AddInManager.ActionDisable+��5�      �� $ DisablePackageCommand�5�      �� 5�      $ removePackageButton��5�      8�� ��5�        *AddInManager.ActionUninstall+��5�      �� $ RemovePackageCommand�5�      �� 5�      $ cancelInstallationButton��5�      8�� ��5�        *'%AddInManager.ActionCancelInstallation+��5�      �� $ CancelInstallationCommand�5�      �� 5�      $ cancelUpdateButton��5�      8��	 ��5�        *!AddInManager.ActionCancelUpdate+��5�      �� $ CancelUpdateCommand�5�      �� 5�      $  cancelUninstallationButton��5�      8��
 ��5�        *)'AddInManager.ActionCancelDeinstallation+��5�      �� $! CancelUninstallationCommand�5�      5�      5�      5�       5�      �� 5�      $ False��65    6   �� $ 	IsEnabled�.a�5�      �� $ disablePackageButton��5�       � ��$ Enable��5�      �� 5�      $ nameTextBlock��5�       � ��
 �����5�      �� 5�      $ summaryTextBlock��5�       � ��
 �����5�      �� 5�      $ nameTextBlock��5�       � ��$ Strikethrough{�5�      5�      �� 5�      $
 True��63    6   �� $ IsAdded�.a�5�      �� $ nameTextBlock��5�       � ��$ Italic$�5�      �� 5�      $ summaryTextBlock��5�       � ��$ Italic$�5      5     �� 5     $
 True��65    6   �� $ 	IsRemoved�.a�5     �� $ nameTextBlock��5      � ��$ Italic$�5     �� 5	     $ summaryTextBlock��5
      � ��$ Italic$�5     5     ^� 5      5     �� 5      5     �� $ 
IsSelected� �� " ��	 False5     �� 5      5     �� $ HasDependencyConflicts� True5     .0�5     �� $ nameTextBlock��5      � ��
 �  ��5     �� 5     $ summaryTextBlock��5      � ��
 �  ��5      5!     5#     �� 5%     .R�5&     �� $
��Auto=�5'     .��5(     �� $
��8, 4q�6   .+�5)     �� $ 
Horizontal=�5*     $��0,4,0,8q�5+     .+�5,     �� $
��Bold"�5.     $��14(�5/     ��5-     �� *Name+5/     50     �� 51     $ 
Horizontal=�52     $
��0, 4q�53     .+�54     �� $
��Bold"�56     ��55       *!AddInManager2.Details.CreatedBy+56     �� 57     $
��4, 0q�58     ��59     �� $ Authors�5:     �� 5;     $ 
Horizontal=�5<     $
��0, 4q�5>     y�5=     �� $ 
HasVersion�8
   .+�5?     �� $
��Bold"�5A     $��
0, 0, 4, 0q�5B     ��5@       *AddInManager2.Details.Version+5B     �� 5C     ��6   �� $ Version�5D     �� 5E     $ 
Horizontal=�5F     $
��0, 4q�5H     y�5G     �� $ HasOldVersion�8
  .+�5I     �� $
��Bold"�5K     $��
0, 0, 4, 0q�5L     ��5J       *(&AddInManager2.Details.InstalledVersion+5L     �� 5M     ��6   �� $ 
OldVersion�5N     �� 5O     $ 
Horizontal=�5P     $
��0, 4q�5R     y�5Q     �� $ HasNewVersion�8
  .+�5S     �� $
��Bold"�5U     $��
0, 0, 4, 0q�5V     ��5T       *" AddInManager2.Details.NewVersion+5V     �� 5W     ��6   �� $ Version�5X     �� 5Y     $ 
Horizontal=�5Z     $
��0, 4q�5\     y�5[     �� $ HasLastUpdated�8
  .+�5]     �� $��
0, 0, 4, 0q�5^     $
��Bold"�5`     ��5_       *#!AddInManager2.Details.LastUpdated+5`     �� 5a     ��6   �� $ LastUpdated�$ d��5b     �� 5c     $ 
Horizontal=�5d     $
��0, 4q�5f     y�5e     �� $ HasDownloadCount�8
  .+�5g     �� $��
0, 0, 4, 0q�5h     $
��Bold"�5j     ��5i       *%#AddInManager2.Details.DownloadCount+5j     �� 5k     ��6   �� $ DownloadCount�5l     �� 5m     $y�	Collapsed=�5n     $ 
Horizontal=�5o     $
��0, 4q�5p     .+�5q     �� $��
0, 0, 4, 0q�5r     $
��Bold"�5t     ��5s       *AddInManager2.Details.Rating+5t     �� 5u     ��6   �� $ Rating�5v     �� 5w     y�5x     �� $ HasLicenseUrl�8
  �� 5y     8   5{     �� $ 
LicenseUrl�.�65   .�5|  	   �� ��6     *(&AddInManager2.Details.ViewLicenseTerms+5}  	   5~     �� 5     y�5�     �� $ HasProjectUrl�8
  �� 5�     8   5�     �� $ 
ProjectUrl�.�65   .�5�  	   �� ��6     *'%AddInManager2.Details.MoreInformation+5�  	   5�     �� 5�     y�5�     �� $ HasReportAbuseUrl�8
 	 �� 5�     8 
  5�     �� $ ReportAbuseUrl�.�69   .�5�  	   �� ��6     *#!AddInManager2.Details.ReportAbuse+5�  	   5�     �� 5�     $
��0, 4q�5�     $
��Wrap=�5�     ��5�     �� $ Description��� 5�     $
��0, 4q�6   .+�5�     �� $ 
Horizontal=�6   .+�5�  	   �� $��
0, 0, 4, 0q�5�  	   $
��Bold"�5�  	   ��5�  	     *$"AddInManager2.Details.Dependencies+5�  	   �� 5�  	   $
��None��5�  	   y�5�  	   �� $ HasNoDependencies�8
  5�  	   �� 5�     $
��4, 4q�5�     ��5�     �� $ Dependencies�5�     � 5�     $
��0, 4q�5�     y�5�     �� $ 	IsOffline�8
   5�     �� 5�  	   $
��Auto �6   �� 5�  	   $��* �6   .+�5�     �� $��0��5�     $��
0, 0, 4, 0q�5�     $
��Bold"�5�     ��5�       * AddInManager2.Details.FileName+5�     �� 5�     $��1��6   $
��Wrap=�6A   ��6"   �� $ FileName�6A   5�     � 5�     $��0,20,0,0q�6    5�     �� 5�  	   $
��Auto �6   �� 5�  	   $��* �6   .+�5�     �� $ optionsButton��5�     $��0��5�     8�� ��5�       *AddInManager.Options+��5�     �� $ OptionsCommand�5�     5�     5�     5�      5�     �� 5�      5�     ��  5�     Z� .a�5�     ��  � y�$ Hidden=�5�     5�     5�     �� 5�     " ��6*   .�5�     ��  � y�$ Hidden=�6"    5�     �� 5�      6   �� *
HasError+	 False6/   .a�5�     ��  � y�$ Visible=�6$   5�     5�     5�     .��5�     �  5�     �� 5�     $	��200��6   �� 5�     $
��Auto �6   �� 5�     $	��.6* �6   $	��100��6"   .+�5�     � $��0��6	   .+�5�     �  5�     �� 5�     $
��Auto �6   �� 5�     �� 5�     $
��Auto �6   .+�5�     � $��0��5�     y�5�     �� $ IsSearchable�#
 [  5�     �� 5�     $
��Auto �6   �� 5�     �� 5�     $
��Auto �6    5�     �� 5�     $
��Auto �6   �� 5�     $
��Auto �6   .+�5�     �� $��1��5�     $��0��5�     $��Center=�5�     $��
2, 0, 5, 2q�5�     ��5�       *!AddInManager2.AddInsView.Search+�� 5�     $��1��5�     $��1��5�     $��
2, 0, 0, 2q�5�     ��5�     �� $ SearchTerms� �� UpdateSourceTrigger$ PropertyChanged=�.��6N    J� InputBindings 5�     �� 5�  	   
  �� Key$  Enter��5�  	   ! �� Command! 5�  	   �� $ SearchCommand�.��5�     5�     �� 5      $��1��5     $��2��5     $��4q�5     �� 5     " �� TextDecorations" 5     Z�  5     �� $ SearchCommand�.�6/   .�5  	   �� #��[ 5  	   $��16��5	  	   $��16��5
  	   5  	   5     5     � 5     $��1��6   .+�5     �� -   5        # ��Name$# allPackagesListBox��5     $��0��5     $ �� SelectedIndex$$ 0��5     $% �� IsSynchronizedWithCurrentItem$
% trueY�5     #��[ 5     #��[ 5     $��Stretch=�5     $��Disabled=�5     ��5     �� $ AddInPackages�5     �� 5     -   5        $ ErrorMessageText��5     $��0��5     $
��Wrap=�5     $��Center=�5      $��Center=�5!     y�5     �� $ HasError�#
 [ ��5     �� $ ErrorMessage�5!     � 5"     $��0��5#     $��20��5$     $	��100��5%     & � IsIndeterminate& . $��Center=�5(     $��Center=�5)     y�5'     �� $ IsReadingPackages�#
 [ 5)     5  /ICSharpCode.AddInManager2.View.PagedResultsView  5*     -   5        '  Name$' pagedResultsView��5+     $��1��5,     $��Center=�5-     y�5.     �� $ IsPaged�#
 [ ( � DataContext( 5/     �� 50     � 52     $��2��6    53     �� 54     $��* �6   �� 55     $
��Auto �6   .+�58     �� $��0��6   $ Vertical=�6"   .+�59     � y�5:     �� $ HasFilterForPreinstalled�#
 [ .+�5;  	   �� -   5        ) ��Name$ ) preinstalledAddInsCheckBox��5<  	   $��4q�5=  	   ��5>  	     *1/AddInManager2.AddInsView.ShowPreinstalledAddIns+* d� 	IsChecked* 5?  	   �� $ ShowPreinstalledAddIns�$ PropertyChanged=���5@  	   �� $% UpdatePreinstalledFilterCommand�5A  	   � 5C     y�5D     �� $ HasFilterForPrereleases�#
 [ .+�5E  	   �� -   5        $) prereleaseAddInsCheckBox��5F  	   $��4q�5G  	   ��5H  	     */-AddInManager2.AddInsView.ShowPrereleaseAddIns+* 5I  	   �� $ ShowPrereleases�$ PropertyChanged=���5J  	   �� $# UpdatePrereleaseFilterCommand�5K  	   5L     � 5N     $��1��6   .+�5O     �� -   5        $ installFromFileButton��5P     #��[ 5T     $��4,4,4,4q�5U     y�5Q     �� $ AllowInstallFromArchive�#
 [ ��5R       *-+AddInManager2.AddInsView.InstallFromArchive+��5S     �� $ InstallFromArchiveCommand�5U     5V     5W     5X     5Y     �� 5Z     $��1��5[     $��5��5\     $��Stretch=�5]     $��Stretch=�5^     � 5_     $��2��5`      5a     �� 5b     $
��Auto �6   �� 5c     .+�5e     �� $��1��5f     #��[ 5g     ��5h     �� + �� ElementName$+ allPackagesListBox��$ SelectedItem�5i     5j     5k     