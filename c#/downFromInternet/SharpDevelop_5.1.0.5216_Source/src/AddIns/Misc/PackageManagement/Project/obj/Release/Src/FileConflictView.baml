   M S B A M L   `   `   `  ����   PackageManagement4    .ICSharpCode.PackageManagement.FileConflictView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeb ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee5core(http://icsharpcode.net/sharpdevelop/core   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  File Conflict�� � WindowStartupLocation$ CenterOwner=�0  *ICSharpCode.Core.Presentation.GlobalStyles   DialogWindowStyle#��Z $	��150��$	��150��$	��400��$	��200�� +� FocusedElement ��  �� ElementName$ NoButton�� � 	Resources  �� 
TargetType   ButtonStyle �� BasedOn��%   '��       �� " ��# Z .��� 	 � ColumnDefinitions	 �� $��* ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �
 � RowDefinitions
 �� $��* ��� $
��Auto �.+��� $��5q�$��5��$
��Wrap=����� *	Message+�� $��4q�$��1��$��1��$	��Yes������ *
YesCommand+�� $��4q�$��1��$��2��$��
Yes to All������ *YesToAllCommand+�� -    ��Name$ NoButton��$��4q�$��1��$��3�� �� 	IsDefault . $��No������ *	NoCommand+�� $��4q�$��1��$��4��$��	No to All������ *NoToAllCommand+