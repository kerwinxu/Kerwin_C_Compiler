   M S B A M L   `   `   `  ����_  [ICSharpCode.Data.EDMDesigner.Core.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullu?clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls1ICSharpCode.Data.EDMDesigner.Core.UI.UserControls  5      �Fclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Common8ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Common  5      D    >ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.PropertyGrid   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      YlocalControls?clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls     5      dlocalControlsUtilFclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Common     5        � 	Resources  5         ExtendedPanelStyle �� 
TargetTypeE   ?ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ExtendedPanel �� Triggers �� Binding �� Self �� RelativeSource �� Value �� Property �� Value  TextBlockStyle  TextBoxStyle  ComboBoxStyleS   MICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ComboBoxEditableWhenFocused	 �� 	Resources
 �� DataTypeH  BICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Common.NullValue��%B  &	        &	 �     &	 P    &	 �    �� 5   
   "  6+    5	      �� 5
       6   �� *IsFocusedIncludingChildren+# Z  true6|   .a�5      ��  � ��
 ��  �63   5      5      �� 5   
   " ��6'    5      �� 5       6   �� *	IsEnabled+# Z 	 false6k   .a�5      ��  � ��
 �����63   5      5      �� 5   
   " ��6%    5      �� 5       6   �� *
IsReadOnly+# Z  true6l   .a�5      ��  � ��
 �����63   5      5      �� 5   
   "  6&    5      �� 5       6   �� *
IsReadOnly+# Z  true6l   .a�5       ��  � ��
 �����63   5!      	 5#      ���� 5$      "
  6   .R�5%      �� $��Italic$�6:   
���������6    �� *
NullText+6M   5&      5'      5(      5)      .��5+      �  � RowDefinitions 5,   
   �� 5-      $��* �6   �� 5.      $��80 �6   .+�50   
   �� .+�51      �� -   5         ��Name$ nameTextBlock��51      $��0��6/    �� Padding$ 5q�6<   
�������$
��Bold"�6_   $��Stretch=�6q   � 52      -   5         �Name$ propertiesGrid��52       � ColumnDefinitions 53      �� 54      $
��Auto �6'   �� 55      $��* �6'   $��80��61   57      58      �� 59   
   $��0��6   $	��0,2q�6$   �� 5:   
   
�������$��1��6,   .+�5;      �� D   >ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.PropertyGrid   Description#��Z 6   $
��Bold"�6Q   �� 5<      -   5        $ descriptionTextBlock��5<      $��Stretch=�66   
�������6R   5=      5>      5?      