   M S B A M L   `   `   `  ����K  GCSharpBinding, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullE'clr-namespace:CSharpBinding.RefactoringCSharpBinding.Refactoring  5      0    *CSharpBinding.Refactoring.InsertCtorDialog   5   #   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      5ref'clr-namespace:CSharpBinding.Refactoring    5      g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeb ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee3sd(http://icsharpcode.net/sharpdevelop/core   5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      ��5      5  /ICSharpCode.Core.Presentation.LocalizeExtension  *$"AddIns.SharpRefactoring.InsertCtor+  � 	Resources  5      2   ,CSharpBinding.Refactoring.IntToBoolConverter   intToBoolConverter �� 
TargetType0  *ICSharpCode.Core.Presentation.GlobalStyles   ButtonStyle �� BasedOn��%K   &	        '��        5      6   �� 5	      " ��6
   # Z 6   5
      .��5      �  � Cursor$ Arrow��6   -  'System.Windows.Input.KeyboardNavigation   TabNavigation$ Cycle=�6    � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5      �� $��3q�6   $
��Wrap=�5      ��5        *0.AddIns.SharpRefactoring.InsertCtor.Description+5      �� 5      -   5         ��Name$ varList��5      $��1��6   $ Cycle=�5      $	��300��5       �� View 5      �� 5      .P�5      �� ��6     *20AddIns.SharpRefactoring.InsertCtor.VariableLabel+	 �� CellTemplate	 5      �� 5   	   .R�5   
   � 
 � ColumnDefinitions
 5      �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5!      �� $��0��6   $��Center=�6E   $��0,0,3,0q�6`    d� 	IsChecked 6$   �� *
IsIncluded+6`   �� 5"      $��1��6   ��6%   �� *Text+5#      5$   
   5&      �� 5'      ��6     *97AddIns.SharpRefactoring.InsertCtor.AddCheckForNullLabel+	 5(      �� 5)   	   .R�5*   
   ��  6   �� *AddCheckForNull+ �� Mode$ TwoWay=�{�6F   �� *
IsNullable+5+   
   5-      �� 5.      ��6     *75AddIns.SharpRefactoring.InsertCtor.AddRangeCheckLabel+	 5/      �� 50   	   .R�51   
   ��  6   �� *AddRangeCheck+$ TwoWay=�{�6D   �� *
HasRange+52   
   54      55      57      ]� 58      $��2��6   ��.  .+�59      �� -   5        $
��Left=�59      $��3q�6N   ��6"     *Global.OKButtonText+6Y   �� 5:      -   5        $
��Left=�5:      $��3q�6R   ��6"     *Global.CancelButtonText+6]   �� 5;      -   5         ��Name$ moveDown��5;      $��Right=�6   $��3q�6]   ��65     *Global.MoveDown+{�6h   �� *SelectedIndex+ �� ElementName$ varList�� �� 	Converter# [  6�   �� 5<      -   5        $ moveUp��5<      $��Right=�6   $��3q�6Y   ��63     *Global.MoveUp+{�6d   �� *SelectedIndex+$ varList��# [  6�   d� 5=      -   5         d�Name$ 	selectAll��5=      $��Right=�6%   $��3q�6o   ��6<     *Global.SelectAllButtonText+ 6z   �� *AllSelected+ �� RelativeSource �� *FindAncestor+ �� AncestorType0   *CSharpBinding.Refactoring.InsertCtorDialog"  $ OneWay=�6  5>      5?      5@      