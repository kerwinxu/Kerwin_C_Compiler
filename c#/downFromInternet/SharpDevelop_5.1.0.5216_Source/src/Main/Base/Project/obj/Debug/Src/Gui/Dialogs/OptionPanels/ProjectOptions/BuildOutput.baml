   M S B A M L   `   `   `  ����b  ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeC&clr-namespace:ICSharpCode.SharpDevelopICSharpCode.SharpDevelop  5      S.clr-namespace:ICSharpCode.SharpDevelop.Project ICSharpCode.SharpDevelop.Project  5      e7clr-namespace:ICSharpCode.SharpDevelop.Gui.OptionPanels)ICSharpCode.SharpDevelop.Gui.OptionPanels  5      ;    5ICSharpCode.SharpDevelop.Gui.OptionPanels.BuildOutput   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee5core(http://icsharpcode.net/sharpdevelop/core    5      1sd&clr-namespace:ICSharpCode.SharpDevelop    5      >project.clr-namespace:ICSharpCode.SharpDevelop.Project    5      Loptionpanels7clr-namespace:ICSharpCode.SharpDevelop.Gui.OptionPanels    5      .��5      �   � RowDefinitions  5	      �� 5
      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      6    � ColumnDefinitions 5      �� 5      $
��Auto �6   6%   �� 5      $
��Auto �6   6%   �� 5      $��* �6   6"   �� 5      $��50 �6   6#   .+�5      �� $��2��6
   ��6   5  /ICSharpCode.Core.Presentation.LocalizeExtension  *(&Dialog.ProjectOptions.Build.OutputPath+6a   E   ?ICSharpCode.SharpDevelop.Gui.OptionPanels.StorageLocationPicker  5      $��1��6'   $
��Left=�64      Location 5      �� *OutputPath.Location+�� 5      -   5         ��Name$ outputPathTextBox��5      $��1��6'   $��1��64   $��2��6D   ��5      �� *OutputPath.Value+ �� UpdateSourceTrigger$ PropertyChanged=�6U   �� 5       $��1��6   $��3��6   $��3,0,3,0q�6)   $��Center=�5!      $	��...��5"      ��5#      �� *ChangeOutputPath+62     5%      $��2��6'   $
��Left=�64    6J   �� *DocumentationFile.Location+�� 5'      -   5         ��Name$ xmlDocumentationCheckBox��5'      $��2��6/   $��1��6<   $��Center=�5(      $��3,0,3,0q�5)       d� 	IsChecked 5*      �� *DocumentFileIsChecked+��5+        *20Dialog.ProjectOptions.Build.XmlDocumentationFile+6Z   �� 5-      -   5        $ xmlDocumentationTextBox��5-      $��2��6-   $��2��6:   $��2��6J   {�5.      �� *DocumentFileIsChecked+��5/      �� *DocumentationFile.Value+$ PropertyChanged=�6\     51      $��3��6'   $
��Left=�64    6J   �� *DebugType.Location+�� 53      $��3��6
   $��1��6   $��3,0,3,0q�6'   $��Right=�54   
   ��55   
     *'%Dialog.ProjectOptions.Build.DebugInfo+6L   �� 57      $��3��6   $��2��6   $	��150��6*   $��Center=�58      $
��Left=�59      *   $ICSharpCode.SharpDevelop.EnumBinding   EnumType6   0ICSharpCode.SharpDevelop.Project.DebugSymbolType"  5;       �� SelectedValue 5:      �� 	 �� Path$	 DebugType.Value�5;   J   �� 5=      $��4��6
   $��1��6   $��3,0,3,0q�6'   $��Right=�5>   
   ��5?   
     *-+Dialog.ProjectOptions.Build.TargetFramework+6R   �� 5A      
 �� Orientation$
 
Horizontal=�6   $��4��6(   $��2��65   $��2��6E   .+�5C      �� -   5         ��Name$ targetFrameworkComboBox��5C      $	��200��6/   $��0,0,3,0q�6;   $��Center=�5D      {�.  5E   "   �� 5G      $��3,0,3,0q�6   $��Center=�6   0  *ICSharpCode.Core.Presentation.GlobalStyles   ButtonStyle#��Z 5J      ��5H        *Global.ChangeButtonText+��5I      �� *UpdateProjectCommand+5J   ?   5K      5M      5N      