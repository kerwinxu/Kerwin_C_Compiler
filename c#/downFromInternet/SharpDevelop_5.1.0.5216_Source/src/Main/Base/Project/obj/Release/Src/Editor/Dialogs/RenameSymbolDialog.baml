   M S B A M L   `   `   `  ����   ICSharpCode.SharpDevelop@    :ICSharpCode.SharpDevelop.Editor.Dialogs.RenameSymbolDialog   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee1sd(http://icsharpcode.net/sharpdevelop/core    � WindowStyle$  
ToolWindow=�0  *ICSharpCode.Core.Presentation.GlobalStyles   DialogWindowStyle#��Z  � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�$��527.6�� � SizeToContent$ Height=� � Title 5  /ICSharpCode.Core.Presentation.LocalizeExtension  *!SharpDevelop.Refactoring.Rename+ � 	Resources    BoolToVisibility��%   &	        �� .���  � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��Stretch=�$	��Top=�$
��10,5q���  *+)SharpDevelop.Refactoring.RenameMemberText+�� -   $��symbolNameTextBox��$��1��$��Stretch=�$	��Top=�$
��10,5q�$��3������  �� Path$ NewSymbolName�	 �� Mode$	 TwoWay=�
 �� UpdateSourceTrigger$
 PropertyChanged=��� -   $#��invalidSymbolWarningTextBlock��$��2��$��Stretch=�$	��Top=�$
��10,5q�
���  ����  *&$SharpDevelop.Refactoring.InvalidName+y��� $ IsError� �� 	Converter# [  � $��3�� � ColumnDefinitions �� $��* ��� $
��Auto ��� $
��Auto �.+��� -   $��okButton�� �� 	IsDefault . $��23��$��75��$��Right=�$��0,5,10,5q�$��1����  *Global.RenameButtonText+{��� *IsValidSymbolName+�� -   $��cancelButton�� �� IsCancel . $��Right=�$��0,5,10,5q�$��75��$��23��$��2����  *Global.CancelButtonText+