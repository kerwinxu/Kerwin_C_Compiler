   M S B A M L   `   `   `  ����O  KPackageManagement, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullM+clr-namespace:ICSharpCode.PackageManagementICSharpCode.PackageManagement  5      [2clr-namespace:ICSharpCode.PackageManagement.Design$ICSharpCode.PackageManagement.Design  5	      0    *ICSharpCode.PackageManagement.PackagesView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeb ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee5core(http://icsharpcode.net/sharpdevelop/core   5      <d2http://schemas.microsoft.com/expression/blend/2008   5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      :pm+clr-namespace:ICSharpCode.PackageManagement     5      Bpmd2clr-namespace:ICSharpCode.PackageManagement.Design     5	        � 	Resources  5       �� 
TargetType0  *ICSharpCode.Core.Presentation.GlobalStyles   ButtonStyle �� BasedOn8   2ICSharpCode.PackageManagement.OpenHyperlinkCommand   OpenHyperlinkCommand  DefaultPackageIcon �� 	UriSource  PackageAddedIcon  
SearchIcon  BoolToVisibility % !PackageSourceComboBoxItemTemplate �� Path $  PackageDependencySetItemTemplate  PackageListBoxItemTemplate � ColumnDefinitions � RowDefinitions �� TargetNullValue	 �� 	Converter
 ��Name �� 	IsDefault �� Triggers ^� 
Conditions �� Binding �� RelativeSource �� AncestorType �� Value �� 
TargetName �� Property �� Value  PackageTemplate �� Orientation �� Command �� CommandParameter �� StringFormat �� Binding �� Value��%'  '��       &	  $     &	 7     &	 �     &	     &	 n    &	 �    &	 �    &	 %    7  7  7  &	 �
    7  7   7  7  7  7  7   7  7   7  7   7  7  �� 5      " ��6
   # Z 6     5      6   �� 5      $R Lpack://application:,,,/PackageManagement;component/Resources/packageicon.png?�5      �� 5      $M Gpack://application:,,,/PackageManagement;component/Resources/accept.png?�5      �� 5      $P Jpack://application:,,,/PackageManagement;component/Resources/magnifier.png?�5      �� 5      6!   �� 5      .R�5      �� ��6   �� $
 Name�5      �� 5      .R�5      � .+�5      �� ��6   �� $ Dependencies�5       5!      �� 5#      .R�5$      �  5%      �� 5&      $��60 �6   �� 5'      $��* �6   �� 5(      $
��Auto �6    5+      �� 5,      $��60 �6   .+�5/      �� $��0��50      $��32��51      ��52      �� $ IconUrl�8   �� 53      $��1��54      $
��4, 0q�55      .+�56      �� $
��Bold"�58      ��57      �� $
 Name�58      �� 59      $
��Wrap=�5;      $��CharacterEllipsis=�5<      $��40��5=      ��5:      �� $ Summary�5=      5>      �� 5?      $��2��5@      $	��Top=�5A      $��Right=�5B      $��16��5C      $��16��5D      8�� y�5F      �� $ IsAdded�8	  �� 5G      $
 addPackageButton��5H      $��2��5I      $	��Add��5J       . $y�	Collapsed=�5L      $	��Top=�5N      ��5M      �� $ AddPackageCommand�5N      �� 5O      $
 removePackageButton��5P      $��2��5Q      $��Remove��5R       . $y�	Collapsed=�5T      $��Bottom=�5V      ��5U      �� $ RemovePackageCommand�5V      �� 5W      $
 managePackageButton��5X      $��2��5Y      $��Manage��5Z       . $y�	Collapsed=�5\      $��Bottom=�5^      ��5]      �� $ ManagePackageCommand�5^      5_       5a      ^� 5b       5c      �� 5d       5e      �� $ 
IsSelected� �� " �� True5f      �� 5g       5h      �� $ IsAdded�	 False5i      �� 5j       5k      �� $ 	IsManaged�	 False5l      .0�5n      �� $ addPackageButton��5o       � y�$ Visible=�5q      5r      ^� 5s       5t      �� 5u       5v      �� $ 
IsSelected� �� " �� True5w      �� 5x       5y      �� $ IsAdded� True5z      �� 5{       5|      �� $ 	IsManaged�	 False5}      .0�5      �� $ removePackageButton��5�       � y�$ Visible=�5�      5�      ^� 5�       5�      �� 5�       5�      �� $ 
IsSelected� �� " �� True5�      �� 5�       5�      �� $ 	IsManaged� True5�      .0�5�      �� $ managePackageButton��5�       � y�$ Visible=�5�      5�      5�      �� 5�      .R�5�      �� $
��Auto=�5�      .��5�      �� $
��8, 4q�6   .+�5�      �� $ 
Horizontal=�5�      $
��0, 4q�5�      .+�5�      �� $��Created by:��5�      $
��Bold"�5�      �� 5�      $
��4, 0q�5�      ��5�      �� $ Authors�5�      �� 5�      $ 
Horizontal=�5�      $
��0, 4q�5�      .+�5�      �� $	��Id:��5�      $
��Bold"�5�      $��
0, 0, 4, 0q�5�      �� 5�      y�6   �� $ HasGalleryUrl�8	   �� 5�   	   8   5�   	   �� $ 
GalleryUrl�.�66   .�5�   
   �� ��6   �� $ Id�5�   
   5�   	   �� 5�      y�5�      �� $ HasNoGalleryUrl�8	  ��5�      �� $ Id�5�      �� 5�      $ 
Horizontal=�5�      $
��0, 4q�5�      .+�5�      �� $��Version:��5�      $
��Bold"�5�      $��
0, 0, 4, 0q�5�      �� 5�      ��6   �� $ Version�5�      �� 5�      $ 
Horizontal=�5�      $
��0, 4q�5�      y�5�      �� $ HasLastPublished�8	  .+�5�      �� $��
0, 0, 4, 0q�5�      $��Last Published:��5�      $
��Bold"�5�      �� 5�      ��6   �� $ LastPublished�$ d��5�      �� 5�      $ 
Horizontal=�5�      $
��0, 4q�5�      y�5�      �� $ HasDownloadCount�8	  .+�5�      �� $��
0, 0, 4, 0q�5�      $��
Downloads:��5�      $
��Bold"�5�      �� 5�      ��6   �� $ DownloadCount�5�      �� 5�      $y�	Collapsed=�5�      $ 
Horizontal=�5�      $
��0, 4q�5�      .+�5�      �� $��
0, 0, 4, 0q�5�      $��Rating:��5�      $
��Bold"�5�      �� 5�      ��6   �� $ Rating�5�      �� 5�      y�5�      �� $ HasLicenseUrl�8	  �� 5�      8   5�      �� $ 
LicenseUrl�.�65   .�5�   	   �� $��View License Terms��6   5�   	   5�      �� 5�      y�5�      �� $ HasProjectUrl�8	  �� 5�      8   5�      �� $ 
ProjectUrl�.�65   .�5�   	   �� $��More Information��6   5�   	   5�      �� 5�      y�5�      �� $ HasReportAbuseUrl�8	 	 �� 5�      8 
  5�      �� $ ReportAbuseUrl�.�69   .�5�   	   �� $��Report Abuse��6   5�   	   5�      �� 5�      $
��0, 4q�5�      $
��Wrap=�5�      ��5�      �� $ Description��� 5�      $
��0, 4q�6   .+�5�      �� $ 
Horizontal=�6   .+�5�   	   �� $��Dependencies:��5�   	   $��
0, 0, 4, 0q�5�   	   $
��Bold"�5�   	   �� 5�   	   $
��None��5�   	   y�5   	   �� $ HasNoDependencies�8	  5  	   �� 5     $
��4, 4q�5     8�� ��5     �� $ Dependencies�5     5     5      5
     �� 5      5     ��  5     Z� .a�5     ��  � y�$ Hidden=�5     5     5     5     .��5     �  5     �� 5     $	��100��6   �� 5     $
��Auto �6   �� 5     $	��100��6   .+�5     � $��0��6	    5     �� 5     �� 5      $
��Auto �6   .+�5"     �� -   5         ��Name$ allPackagesListBox��5#     $��0��5$      �� SelectedIndex$ 0��5%     #��[ 5&     $��Stretch=�5(     $��Disabled=�5)     ��5'     �� $ PackageViewModels�5)     � 5*     $��0��5+     $��20��5,     $	��100��5-      � IsIndeterminate . $��Center=�50     $��Center=�51     y�5/     �� $ IsReadingPackages�#	 [ 51     �� 52     -   5         ��Name$ ErrorMessageText��53     $��0��54     $
��Wrap=�57     y�55     �� $ HasError�#	 [ ��56     �� $ ErrorMessage�57     4   .ICSharpCode.PackageManagement.PagedResultsView  58     -   5          Name$ pagedResultsView��59     $��1��5:     $��Center=�5;     y�5<     �� $ IsPaged�#	 [   � DataContext  5=     �� 5>     �� 5?     $��1��5@     $��5��5A     $��Stretch=�5B     $��Stretch=�5C     � 5D     $��2��5E      5F     �� 5G     $
��Auto �6   �� 5H     .+�5J     � y�5K     �� $ ShowPackageSources�#	 [  5L     �� 5M     �� 5N     $
��Auto �6    5P     �� 5Q     $
��Auto �6   �� 5R     $
��Auto �6   �� 5S     $
��Auto �6   �� 5T     $
��Auto �6   .+�5V     �� $��0��5W     $��2��5X     $��
0, 0, 0, 2q�5Y     #��[ 5\     ! �� SelectedItem! 5Z     �� $ SelectedPackageSource���5[     �� $ PackageSources�y�5]     �� $ ShowPackageSources�#	 [ �� 5^     $��1��5_     $��0��5`     y�5a     �� $ IsSearchable�#	 [ ��5b     �� $ SearchTerms�" �� UpdateSourceTrigger$" PropertyChanged=�.��6M   # J� InputBindings# 5c     �� 5d     
$ �� Key$$ Enter��5e     % �� Command% 5f     �� $ SearchCommand�.��5g     5h     �� 5i     $��1��5j     $��1��5k     $��4q�5l     y�5m     �� $ IsSearchable�#	 [ �� 5n     & �� TextDecorations& 5o     Z�  5p     �� $ SearchCommand�.�6.   .�5q     �� #��[ 5r     $��16��5s     $��16��5t     5u     5v     �� 5w     $��2��5x     $��2��5y     $��2q�5z     $��Include Prerelease��5{     y�5|     �� $ ShowPrerelease�#	 [ ' d� 	IsChecked' 5}     �� $ IncludePrerelease��� 5~     $��3��5     $��1��5�     $��2q�5�     $��
Update All��5�     y�5�     �� $  IsUpdateAllPackagesEnabled�#	 [ ��5�     �� $ UpdateAllPackagesCommand�5�     �� 5�     $��1��5�     #��[ 5�     ��5�     �� ( �� ElementName$( allPackagesListBox��$ SelectedItem�5�     5�     5�     