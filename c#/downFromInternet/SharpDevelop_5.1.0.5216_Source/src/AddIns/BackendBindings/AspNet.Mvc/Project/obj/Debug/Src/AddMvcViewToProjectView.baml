   M S B A M L   `   `   `  ����H  DAspNet.Mvc, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=null?$clr-namespace:ICSharpCode.AspNet.MvcICSharpCode.AspNet.Mvc  5      ?$clr-namespace:ICSharpCode.AspNet.MvcICSharpCode.AspNet.Mvc  5      4    .ICSharpCode.AspNet.Mvc.AddMvcViewToProjectView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      =aspnetmvcaddin$clr-namespace:ICSharpCode.AspNet.Mvc    5      g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeb ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee5core(http://icsharpcode.net/sharpdevelop/core   5      0mvc$clr-namespace:ICSharpCode.AspNet.Mvc   5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � Title$  Add View��5      0  *ICSharpCode.Core.Presentation.GlobalStyles   DialogWindowStyle#��Z 5	       � WindowStartupLocation$ CenterOwner=�5      $	��400��5      $	��500��5      1   +ICSharpCode.AspNet.Mvc.CloseWindowBehaviour   IsClosed 5
      �� *
IsClosed+ +� FocusedElement 5      ��  �� ElementName$ ViewNameTextBox�� � 	Resources 5       �� 
TargetType   ButtonStyle	 �� BasedOn9   3ICSharpCode.AspNet.Mvc.BooleanToVisibilityConverter   BoolToVisibility
   Hidden  ViewEngineTemplate��%�   '��       &	  $     &	 >     �� 5      " ��6
   #	 Z 6     5      
 . 6I   �� 5      .R�5      �� ��6   �� *Name+5      5      .��5      � .+�5      � -   5         �Name$ MainGrid��5       � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5       $
��Auto �6   �� 5!      $
��Auto �6   �� 5"      $
��Auto �6   �� 5#      $
��Auto �6   �� 5$      $
��Auto �6   �� 5%      $
��Auto �6   �� 5&      $��* �6   �� 5'      $
��Auto �6    � ColumnDefinitions 5*      �� 5+      $
��Auto �6   �� 5,      $��* �6   .+�5/      �� $��
0, 2, 0, 0q�50      $��
View Name:��51      �� 52      -   5         ��Name$ ViewNameTextBox��53      $��
0, 2, 0, 0q�54      $��1��55      ��56      ��  �� Path$ ViewName� �� UpdateSourceTrigger$ PropertyChanged=��� 58      $��1��59      $��View Engine:��5:      �� 5;      $��1��5<      $��1��5=      $��
0, 2, 0, 0q�5>      #��[ 5@      ��5?      �� $ ViewEngines� �� SelectedItem 5A      �� $ SelectedViewEngine��� 5C      $��2��5D      $��0, 20, 0, 0q�5E      $��Strongly Typed:��5F      �� 5G      $��1��5H      $��2��5I      $��0, 28, 0, 0q�5J       d� 	IsChecked 5K      �� $ IsStronglyTypedView��� 5M      $��3��5N      $��Model:��5P      {�5O      �� $ IsStronglyTypedView�5P      �� 5Q      $��3��5R      $��1��5S      $��
0, 2, 0, 0q�5T       �� 
IsEditable . {�5V      �� $ IsStronglyTypedView���5W      �� $ ModelClasses� �� Text 5X      �� $ ModelClassName�$ PropertyChanged=� 5Y      �� $ SelectedModelClass��� 5[      $��4��5\      $��	Template:��5^      {�5]      �� $ IsViewTemplateEnabled�5^      �� 5_      $��4��5`      $��1��5a      $��
0, 2, 0, 0q�5b      #��[ 5e      {�5c      �� $ IsViewTemplateEnabled���5d      �� $ ViewTemplates� 5f      �� $ SelectedViewTemplate��� 5h      $��5��5i      $��0, 20, 0, 0q�5j      $��Use Master Page:��5m      {�5k      �� $ IsContentPageEnabled�y�5l      �� $ IsAspxViewEngineSelected� �� 	Converter# [  5m      �� 5n      $��5��5o      $��0, 20, 0, 0q�5p      $��Use Layout:��5s      {�5q      �� $ IsContentPageEnabled�y�5r      �� $ IsRazorViewEngineSelected�# [  5s      �� 5t      $��1��5u      $��5��5v      $��0, 28, 0, 0q�5w      {�5x      �� $ IsContentPageEnabled� 5y      �� $ IsContentPage��� 5{      $��6��5|      $��Master Page:��5      y�5}      �� $ IsAspxViewEngineSelected�# [  {�5~      �� $$ IsContentPagePropertiesEnabled�5      �� 5�      $��6��5�      $��Layout:��5�      y�5�      �� $ IsRazorViewEngineSelected�# [  {�5�      �� $$ IsContentPagePropertiesEnabled�5�      � 5�      $��6��5�      $��1��5�      {�5�      �� $$ IsContentPagePropertiesEnabled� 5�      �� 5�      $��* �6   �� 5�      $
��Auto �6   �� 5�      $
��Auto �6   .+�5�      �� ��5�      �� $ MasterPageFile��� 5�      $��2��5�       �� Orientation$ 
Horizontal=�5�      .+�5�      �� $��
9, 0, 9, 0q�5�      $	��...��5�      ��5�      Z� ��5�      �� $% OpenSelectMasterPageViewCommand�5�      5�      �� 5�      $��7��5�      $��Main Content ID:��5�      y�5�      �� $ IsAspxViewEngineSelected�# [  {�5�      �� $$ IsContentPagePropertiesEnabled�5�      �� 5�      $��7��5�      $��1��5�      y�5�      �� $ IsAspxViewEngineSelected�# [  {�5�      �� $$ IsContentPagePropertiesEnabled���5�      �� $! PrimaryContentPlaceHolderId��� 5�      $��8��5�      $��0, 20, 0, 0q�5�      $��Partial View:��5�      �� 5�      $��1��5�      $��8��5�      $��0, 28, 0, 0q�5�       5�      �� $ IsPartialView��� 5�      $ 
Horizontal=�5�      $��Right=�5�      $��4q�5�      $��2��5�      $��10��5�      .+�5�      �� $
��2, 0q�5�      $
��_Add��5�       �� 	IsDefault . ��5�      �� $ AddMvcViewCommand��� 5�      $
��2, 0q�5�      $��_Cancel��5�       �� IsCancel . 5�      5�      5�      � 5�      -   5        $ SelectMasterPageGrid��5�      #��� ��5�      $y�	Collapsed=�5�      +   %ICSharpCode.AspNet.Mvc.SlideBehaviour   IsDisplayed 5�      �� $  IsSelectMasterPageViewOpen�$   FrameworkElementHiddenBySlide 5�      �� $ MainGrid�� 5�      �� 5�      $
��Auto �6   �� 5�      $��* �6   �� 5�      $
��Auto �6   .+�5�      �� $��4q�5�      $��Select a Master Page��5�      y�5�      �� $ IsAspxViewEngineSelected�# [  5�      �� 5�      $��4q�5�      $��Select a Layout Page��5�      y�5�      �� $ IsRazorViewEngineSelected�# [  5�      �� 5�      $��1��5�      ��5�      �� $ MasterPages� 5�      �� $ SelectedMasterPage� �� View 5�      �� 5�      .P�5�      �� $
��File��5�       �� Width$
 Auto��5�       �� DisplayMemberBinding 5�      �� $ FileName�5�      �� 5�      $��Project Folder��5�      $
 Auto��5�       5�      �� $ FolderRelativeToProject�5�      5�      5�      �� 5�      $ 
Horizontal=�5�      $��Right=�5�      $��4q�5�      $��2��5�      .+�5�      �� $
��2, 0q�5�      $��_Back��5�      ��5�      �� $&  CloseSelectMasterPageViewCommand��� 5�      $
��2, 0q�5�      $��_Select��5�      ��5�      �� $ SelectMasterPageCommand�5�      5�      5�      5�      