   M S B A M L   `   `   `  ����a  ]PresentationFramework.Aero, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35gJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.AeroMicrosoft.Windows.Themes  5      L HDebugger.AddIn, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Debugger.AddIn.VisualizersDebugger.AddIn.Visualizers 5      I   CDebugger.AddIn.Visualizers.Graph.Drawing.PositionedGraphNodeControl   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      [aeroJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero     5      :local(clr-namespace:Debugger.AddIn.Visualizers     5        � 	Resources  5       �� MergedDictionaries �� Source�� 5       5	      �� 5
      $ NodeControlResources.xaml?�6!   %    5   
   .��5      5   /Microsoft.Windows.Themes.SystemDropShadowChrome  ._�5      ��  �� Orientation$ Vertical=�6   .+�5      �� -   5         ��Name$ typeNameHeaderBorder��5      ���#ddeeff$��20��6A   $	��1,0q�6M   $��1,1,1,0q�6Z   
�������$��Stretch=�6�    �� Padding$ 1q�6�   ._�5      �� ��6   �� *
TypeName+6.   5      �� 5   
   -   5        $��listView��5      $
��Auto=�6#   $	��200��6S   $	��300��6_   ��5      �� 5       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 0,1&�67   .��5      �  � Color$ #ddeeff��6#   	 � Offset$		 0.0Q�64   � 5      $ White��6#   $		 0.4Q�61   � 5      $ White��6#   $		 0.8Q�61   5      ��5      �� 5      
 �� 
TargetType"
 ��6   .�5       -   5        �� 5"       �� Property � �� �� Value
 ���� 63   �� 5#       � ��$ 0q�6/   6;   �� 5$       � ��$ 1q�68   �� 5%       � |� .  62    �� Triggers 5&      �� 5'       �� Binding 6&   �� *
IsNested+ �� Value True6C   .a�5(      ��  � �� �#6666666M   �� 5)       � ��$ Italic$�6:   6K   5*      P� 5+       P� Property �@J�IsMouseOver P� Value . . �5,      ��  � ��
 �����6;   5-      5/       �� View 51      �� 52      ! �� ColumnHeaderContainerStyle 53      �� 54      .�56      ��  � ��$ 1��6H   57      P�5:      �� 5<      $
��Plus��6-    �� Width$ 20��6;   -   5        columnExpander�� �� CellTemplate 5=   "   �� 5>   &   .R�5?   *   �� $��0 2 0 0q�65   .+�5@   .   d�  d�Name$ Expander��6;   -   5        $
��-6 0q�5@   M   $��0q�6�    d� 	IsChecked 6[   �� *
IsExpanded+6�   d� 5A   .   $ PropertyExpander��6;   -   5        $
��-6 0q�5A   U   $��0q�6�    6c   �� *IsPropertyExpanded+6�   5B   +    �� Triggers 5D   *   �� 5E   .   $ False��6_    6:   ��  �� Path$ HasChildren�.a�5F   2   ��  �� 
TargetName$ Expander��69    � y�$ 	Collapsed=�5G   K   5H   /   �� 5I   .   $ False��6l    6:   �� $ ShowExpandPropertyButton�.a�5J   2   �� $ PropertyExpander��69    � y�$ 	Collapsed=�5K   K   5L   /   5N   '   5P      �� 5R      $
��Icon��6*   $ 10��68   -   5        columnMemberIcon�� 5S   "   �� 5T   #   .R�5U      �� $��10��6$   $��10��6/   $
��-6 0q�6Y   ��6;   �� *
MemberIcon+6i   5V      5X      �� 5Z      $
��Name��6-   $ 60��6;   -   5        
columnName�� 5[   "   �� 5\   &   .R�5]   '   �� $ 
Horizontal=�62   .+�5^   .   �� ��68   �� *Name+��6N   �� *IsPropertyExpanded+   BoolToBoldConverter �� 	Converter# [  6�   5_   (   5`   '   5b      �� 5d      $��Value��6-   $ 60��6<     valueColumnTemplate# [ 6G   -	   5        
columnText��5e      5g      5i      5j      5k      5l      