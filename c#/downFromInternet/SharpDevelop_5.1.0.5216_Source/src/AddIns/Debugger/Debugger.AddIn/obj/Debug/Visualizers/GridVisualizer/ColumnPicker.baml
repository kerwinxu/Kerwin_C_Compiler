   M S B A M L   `   `   `  ����L  HDebugger.AddIn, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullS.clr-namespace:Debugger.AddIn.Visualizers.Graph Debugger.AddIn.Visualizers.Graph  5      a ]PresentationFramework.Aero, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35gJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.AeroMicrosoft.Windows.Themes 5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeb ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee   ComboBoxFocusVisual  �� Property �� Value �� StrokeDashArray J� SnapsToDevicePixels  ButtonNormalBackground �� EndPoint �� 
StartPoint � Color � Offset  ButtonNormalBorder �� Color  DownArrowGeometry   ComboBoxReadonlyToggleButton	 �� 
TargetType
 �� 
TargetType+   %Microsoft.Windows.Themes.ButtonChrome   Name    
Background    BorderBrush J� IsMouseOver    RenderMouseOver    RenderPressed F�Name �� Triggers P� Property P� Value �� 
TargetName  TextBoxBorder � MappingMode  ComboBoxEditableTextBox ��Name  ComboBoxToggleButton    RoundCorners  ComboBoxEditableTemplate �Name � ColumnDefinitions �Name � AllowsTransparency �� RelativeSource5  /Microsoft.Windows.Themes.SystemDropShadowChrome  Name �� MaxDropDownHeight    Color! �� ElementName" ��Name-  'System.Windows.Input.KeyboardNavigation#   DirectionalNavigation,  &Microsoft.Windows.Themes.ListBoxChrome$  Name%   
Background&   BorderBrush'   BorderThickness( J� IsKeyboardFocusWithin)   RenderFocused*   RenderMouseOver+ ��Name, �� 
IsReadOnly- d� 	IsChecked. �� Mode/ P� 
SourceName 	 styleColumnsComboBox0 J� IsHitTestVisible#1 �� SelectionBoxItemStringFormat2 �� ContentStringFormat5  /ICSharpCode.Core.Presentation.LocalizeExtension3 �� Triggers�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      5dv.clr-namespace:Debugger.AddIn.Visualizers.Graph  5      5core(http://icsharpcode.net/sharpdevelop/core   5      gMicrosoft_Windows_ThemesJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero  5      %�  &	        &	 �     &	 �    &	 �    &	 �    7  &	     &	 �    &	 �    7  &	 �
    7  7  &		 A    7   7  7  7  7  7  �� 5      .�5      ��   � �� 5	      �� 5
      .R�5      �� 
���   �$	 1 2R�63   $��1��6I   $��4,4,21,4q�6]    . 6o   5      5      5      �� 5   
   $	 0,1&�6=   $	 0,0&�6L   .��5      � $ #F3F3F3��6   $ 0Q�6+   � 5      $ #EBEBEB��6   $	 0.5Q�6+   � 5      $ #DDDDDD��6   $	 0.5Q�6+   � 5      $ #CDCDCD��6   $ 1Q�6+   5      �� 5   
   $ 	#FF707070��65   �5   
   M 0 0 L 3.5 4 L 7 0 Z�6D   �� 5   
   "	 d�65   .�5      ��   �@�OverridesDefaultStyle . 66   �� 5        � �� .  6*   �� 5        � |� .  6*   �� 5        �@��	ClickMode$ Press=�6*   �� 5        � �� 5      �� 5      "
 d�6&   .R�5          $ Chrome��6@    . # z��6k   # z��6�   # z 6�   # z��6�   ._�5!      � $��Right=�6#   #��� r�6?   .+�5"   "   F� $ Arrow��6'   
���   �$��Center=�6C   $��3,1,0,0q�6`   $��Center=�6q   8��  6�   5#      5$       5%      P� 5&       �@d�	IsChecked$
 trueY�6;   . �5'   "   �� $ Chrome��6B     �@  RenderPressed . 6V   5(      P� 5)       � {� .  . �5*   "   �� $ Arrow��69     � �� �#AFAFAF6L   5+      5-      5/      50      �� 51   
   $
 0,20&�64   $	 0,0&�6D   $ Absolute=�6U   .��52      � $ #ABADB3��6   $
 0.05Q�6+   � 53      $ #E2E3EA��6   $
 0.07Q�6+   � 54      $ #E3E9EF��6   $ 1Q�6+   55      �� 56   
   "	 ��60   .�57      ��   �@�OverridesDefaultStyle . 66   �� 58        �@J�	AllowDrop . 6*   �� 59        � ��$ 0��6)   �� 5:        � ��$ 0��6*   �� 5;        �@�FocusVisualStyle 61   Z� �� 5<        � �� 5=      �� 5>      "
 ��6&   .R�5?      �� $ PART_ContentHost��6'   
������ |�.  $��Hidden=�6l   $��Hidden=�6�   5@      5B      5C      �� 5D   
   "	 d�6-   .�5E      ��   �@�OverridesDefaultStyle . 66   �� 5F        � �� .  6*   �� 5G        � |� .  6*   �� 5H        �@��	ClickMode$ Press=�6*   �� 5I        � �� 5J      �� 5K      "
 d�6&   .R�5L         $ Chrome��6@   #��� r�6P    . # z��6�   # z��6�   # z 6  # z��6A   .  ._�5M      F� $ Arrow��6#   
���   �$��Center=�6?   $��0,1,0,0q�6\   $��Center=�6m   8��  6�   5N       5O      P� 5P       �@d�	IsChecked$
 trueY�6;   . �5Q   "   �� $ Chrome��6B     �@  RenderPressed . 6V   5R      P� 5S       � {� .  . �5T   "   �� $ Arrow��69     � �� �#AFAFAF6L   5U      5W      5Y      5Z      �� 5[   
   "
 ��6;   .R�5\      � $ 	Placement��6    .  5]      �� 5^      $��* �6'   �� 5_      $
��Auto �6'   .+�5a      � $ 
PART_Popup��6    . $��Bottom=�6�   #��� .�6�   $��2��6  ��6F   �� *IsDropDownOpen+ �� *TemplatedParent+.��5b        $
 Shdw��6F   #��z 6T   $  Transparent��6�   ��6�   �� *ActualWidth+$! 	Placement��._�5c      �� $" DropDownBorder��6!   #��� ��69   #��� ��6   $��1q�6�   ._�5d      �� .��5e   "   �� # z 61   $# 	Contained=�6m   5f      5g      5h      5i        5j      $$ Border��69   $��2��6I   #% z��6]   #& z��6�   #' z��6�   #) z( 6�   #* z 6  �� 5k      $+ PART_EditableTextBox��6   #��z��68   8��  #��z��6�   #��z��6�   , 6  �� *
IsReadOnly+ �� *TemplatedParent+d� 5l      8�� $��1��6M   - 6]   �� *IsDropDownOpen+$. TwoWay=� �� *TemplatedParent+5m       5n      P� 5o       �@J�IsKeyboardFocusWithin . . �5p      ��   � ��
 �   �63   5q      P� 5r       �@��IsDropDownOpen . . �5s      �� $ Border��66     �@ RenderFocused . 6J   5t      P� 5u       �@��HasItems .  . �5v      �� $ DropDownBorder��6/     � ��$ 95��6K   5w      P� 5x       � {� .  . �5y      �� # � ��63     � ���� 5z        � �� �	#FFF4F4F463   5{      P� 5|       �@��
IsGrouping . . �5}      ��   � �� .  6F   5~      P� 5      $/ 
PART_Popup��63    �@�HasDropShadow . . �5�      �� $
 Shdw��6/     � ��$ 0,0,5,5q�6A   �� 5�      $
 Shdw��6.     �@ Color$ 	#71000000��6@   5�      5�      �� 5�   
   "	 ��6-   .�5�      ��   �@�FocusVisualStyle8   61   �� 5�        � ��# � ��6+   �� 5�        � ��8  6+   �� 5�        � ��8  6,   �� 5�        � ��$ 1q�60   �� 5�        � ��$
 Auto=�6K   �� 5�        � ��$
 Auto=�6I   �� 5�        � ��$	 4,3q�6(   �� 5�        � �� 5�      �� 5�      "
 ��6&   .R�5�      � $ MainGrid��6    .  5�      �� 5�   "   $��* �63   �� 5�   "   #��� r�63   $��0 �6�   .+�5�      � $ 
PART_Popup��6$   $��1q�68    . $��Bottom=�6�   #��� .�6�   $��2��6  ��6]   �� *IsDropDownOpen+ �� *TemplatedParent+.��5�   "     $
 Shdw��6R   #��z 6`   $  Transparent��6�   ��6�   �� *ActualWidth+$! MainGrid��._�5�   &   �� $" DropDownBorder��6-   #��� ��6E   #��� ��6�   $��1q�6�   ._�5�   *   �� ��. .��5�   .   �� # z 6=   $# 	Contained=�6y   5�   +   5�   '   5�   #   5�      d� 5�      8�� #��z��6a   #��z��6�   $��2��6�   - 6�   �� *IsDropDownOpen+$. TwoWay=� �� *TemplatedParent+�� 5�      #��z��5�   !   #��z��5�   !   #��z��5�   !   0 .  # z 5�   !   #2 z1 5�   !   ��5�   !     *(&Debugger.Visualizers.ColumnPickerLabel+5�       5�      P� 5�      $/ 
PART_Popup��6?    �@�HasDropShadow . . �5�   "   �� $
 Shdw��6;     � ��$ 0,0,5,5q�6M   �� 5�   "   $
 Shdw��6:     �@ Color$ 	#71000000��6L   5�      P� 5�       �@��HasItems .  . �5�   "   �� $ DropDownBorder��6;     � ��$ 95��6W   5�      P� 5�       � {� .  . �5�   "   �� # � ��6?     � ���� 5�   "     � �� �	#FFF4F4F46?   5�      P� 5�       �@��
IsGrouping . . �5�   "   ��   � �� .  6R   5�      5�      5�      3 5�      P� 5�       �@��
IsEditable . . �5�      ��   � ��8  64   �� 5�        � ��# � ��63   �� 5�        � �� .  62   �� 5�        � ��$ 3q�60   �� 5�        � ��8  61   5�      5�      5�      