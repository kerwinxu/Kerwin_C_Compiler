   M S B A M L   `   `   `  ����  PackageManagement4    .ICSharpCode.PackageManagement.FileConflictView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeb ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee5core(http://icsharpcode.net/sharpdevelop/core   5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � Title$  File Conflict��5       � WindowStartupLocation$ CenterOwner=�5      0  *ICSharpCode.Core.Presentation.GlobalStyles   DialogWindowStyle#��Z 5	      $	��150��5
      $	��150��5      $	��400��5      $	��200��5       +� FocusedElement 5      ��  �� ElementName$ NoButton�� � 	Resources 5       �� 
TargetType   ButtonStyle �� BasedOn��%.   '��       �� 5      " ��6
   # Z 6   5      .��5      � 	 � ColumnDefinitions	 5      �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   
 � RowDefinitions
 5      �� 5      $��* �6   �� 5      $
��Auto �6   .+�5      �� $��5q�5       $��5��5"      $
��Wrap=�5#      ��5!      �� *	Message+5#      �� 5$      $��4q�5%      $��1��5&      $��1��5'      $	��Yes��5)      ��5(      �� *
YesCommand+5)      �� 5*      $��4q�5+      $��1��5,      $��2��5-      $��
Yes to All��5/      ��5.      �� *YesToAllCommand+5/      �� 50      -   5         ��Name$ NoButton��51      $��4q�52      $��1��53      $��3��54       �� 	IsDefault . $��No��57      ��56      �� *	NoCommand+57      �� 58      $��4q�59      $��1��5:      $��4��5;      $��	No to All��5=      ��5<      �� *NoToAllCommand+5=      5>      5?      