   M S B A M L   `   `   `  ���� a  ]PresentationFramework.Aero, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35gJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.AeroMicrosoft.Windows.Themes  L HDebugger.AddIn, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullA%clr-namespace:Debugger.AddIn.TooltipsDebugger.AddIn.Tooltips 4   .Debugger.AddIn.Tooltips.DebuggerTooltipControl   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     [aeroJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero     ;	debugging%clr-namespace:Debugger.AddIn.Tooltips     g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeb ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee5core(http://icsharpcode.net/sharpdevelop/core     � AllowsTransparency  .  � 	Resources  �� MergedDictionaries �� Source   OrangeBrushKey �� EndPoint �� 
StartPoint � Offset � Color  OrangePressedBrushKey  SilverBrushKey  SilverPressedBrushKey  CloseButtonTemplate �� 
TargetType	 �� CornerRadius	
 �� X1	 �� X2	 �� Y1	 �� Y2 �� Triggers P� Property P� Value �� 
TargetName �� Value �� Property  PinButtonTemplate �� Left
 �� Top  MouseOverPinBrush �� Color �� 
TargetType  	TextStyle-  'System.Windows.Input.KeyboardNavigation  PinThumbStyle ��Name6  0ICSharpCode.Core.Presentation.ContextMenuBuilder 	 menuBuilder��  �� $ VisualizerPicker.xaml?�%�  &	        &	 l     &	 �     &	 J    &	 �    7  7   7  &	 w    7  7   7  &	 �    &	 �    &	 !    &		 a    �� $	 0,1&�$	 0,0&���� $ 0Q�$ White��� $	 0.5Q�$ Orange��� $ 1Q�$ Orange���� $	 0,1&�$	 0,0&���� $ 1Q�$ White��� $	 0.5Q�$ Orange��� $ 0Q�$ Orange���� $	 0,1&�$	 0,0&���� $ 0Q�$ White��� $	 0.5Q�$ 	LightGray��� $ 1Q�$ 	LightGray���� $	 0,1&�$	 0,0&���� $ 1Q�$ White��� $	 0.5Q�$ 	LightGray��� $ 0Q�$ 	LightGray���� " ��.R��� $��	TheBorder��$��16��$��16��$	 2,2,0,0��$��1q�
���   �8��  ._��� .+��� $	
 3.5��$
 10.5��$	 3.5��$
 10.5��
���   �$��2���� $	
 3.5��$
 10.5��$
 10.5��$	 3.5��
���   �$��2�� P�  �@J�IsMouseOver . . ��� $ 	TheBorder��8   � ���� $ 	TheBorder�� � ��
 �����P�  � �� . . ��� $ 	TheBorder��8   � ���� $ 	TheBorder�� � ��
 ������� " ��.R��� $��	TheBorder��$��16��$��16��$	 3��$��1q�
���   �8��  ._��� $��	TheCanvas��.+��� $
 4��$ 10��$ 2��$ 2��
���   �$��1���� $
 9��$ 9��$ 2��$ 8��
���   �$��1���� $
 2��$ 12��$ 8��$ 8��
���   �$��1���� 
���   �$��2��$��5��$ 4��$ 3���� $
 7��$ 7��$ 9��$ 12��
���   �$��1�� P�  �@J�IsMouseOver . . ��� $ 	TheBorder��8   � ���� $ 	TheBorder�� � ��
 �����P�  � �� . . ��� $ 	TheBorder��8   � ���� $ 	TheBorder�� � ��
 ������� $ Black���� " ��.���  �@�OverridesDefaultStyle . ��  � ��$ Center=���  � ��$ Khmer UI)���  � ��$ 12(���  �@ TabNavigation$
 None=���  �@�FocusVisualStyle Z� ��  � �� �� " ��.R��� $��Border��
������ 
������ $��0q�._��� $��PART_ContentHost��$��0q��� " n�.���  � �� �� " n�.R��� $ 	Container��  .����  �� Orientation$ 
Horizontal=�.+�&   System.Windows.Controls.DataGrid  -     Name$ dataGrid��"   VerticalScrollBarVisibility$ Disabled=�$   HorizontalScrollBarVisibility$ Disabled=�   GridLinesVisibility$
 None=�   	RowHeight$ 18Q�$	��202��   SelectionMode$ Single=�    SelectionUnit$  FullRow=�!   AutoGenerateColumns! .  "   CanUserAddRows" .  #   HeadersVisibility$
# None=�
�������$��1q����� $ 0,-0.03&�$	 0,1&�.��� $ White��� $ 	#FFFAFCFE��$ 0.983Q�� $ 	#FFECF7FC��$
 0.07Q�� $ 	#FFEEF7FA��$ 0.436Q�$   RowStyle$ �� )  #System.Windows.Controls.DataGridRow"  .���  � ��
 ���� % �� Triggers% P�  �@J�IsMouseOver . . ���  � �� �	#FFE2F6FE&   	CellStyle& �� *  $System.Windows.Controls.DataGridCell"  .���  � |� .  ��  � ��$ 0q�% P�  �@ 
IsSelected . . ���  � ��
 �   ���  � �� Z� '   Columns' 4  .System.Windows.Controls.DataGridTemplateColumn  (   CellTemplate( �� .R�� 
�������.+��� $��Center=�.+�d� ) d�Name$) btnExpander��-   $��0q�$��0q�|�.  $��19��$��13������ " d�.R��� $��19��$��13��
������ ._��� $��9��$��9��$��1q����	#FF7898B5$	 1��* J� SnapsToDevicePixels* . ���� $	 0,0&�$	 1,1&���� $ White��$ .2Q�� $ 	#FFC0B7A6��$ 1Q�._�F� + F�Name$+ 
ExpandPath��$��1,1,1,1q�
���   �s����    �� �    ��- р� ��- р� @KL ���- @KL ���- ��- �@KL ��- �@KL �� ���- �� ���-     р�     р� �� 	 P�  �@d�	IsChecked$
 TrueY�. ��� $ 
ExpandPath�� � ��+ ��    �� �    ��- �@KL ��- �@KL �� 	, �� Triggers, �� - �� Value$- False��. �� Binding. �� *HasChildren+.a��� $ btnExpander�� � y�$ 	Collapsed=�  ( �� .R��� ���� *Image.ImageSource+  ,  &System.Windows.Controls.DataGridColumn/   MinWidth$/ 20Q�0   Header$
0 Name��( �� .R��� ���	#FFDDDDDD$��0 0 1 0q�._��� $	��6 0q�$	��Top=����� 1 �� Path$
1 Name�2 �� Mode$2 OneWay=�  $/ 20Q�$
0 Type��( �� .R��� ���	#FFDDDDDD$��0 0 1 0q�._��� $	��6 0q�$	��Top=����� $
1 Type�$2 OneWay=�  ( �� .R�.  (Debugger.AddIn.Tooltips.VisualizerPicker  3  Name$3 	visPicker��|�.  $��4 0 0 0q�4   ItemsSource4 �� $1 VisualizerCommands�$2 OneWay=�, �� $- False��. �� *HasVisualizerCommands+.a��� $ 	visPicker�� � y�$ 	Collapsed=�  $/ 20Q�$
0 Text��( �� .R��� 5 ��Name$5 	valueText��#��[ 6 �� ShowOnDisabled6 . {��� *CanSetValue+���� *Value+.��7 � ContextMenu7 `� 8 `� 	Converter#8 [	 .1��� $1 ContextMenuAddInTreeEntry��� .��