   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5      _ [ICSharpCode.Data.EDMDesigner.Core.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullq=clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.Converters/ICSharpCode.Data.EDMDesigner.Core.UI.Converters 5      �Hclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType 5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089M   GICSharpCode.Data.EDMDesigner.Core.UI.Converters.ExpanderHeightConverter   ExpanderHeightConverter  ExpanderToggleButtonStyle  �� 
TargetType �� Property �� Value �� 
TargetType � ColumnDefinitions ��Name ��Name � LayoutTransform �� Triggers	 P� Property
 P� Value N� EnterActions	 W� To �� 
TargetName �� TargetProperty g� Duration N� ExitActions �� 
TargetName  ExpanderHeaderFocusVisual J� SnapsToDevicePixels �� StrokeDashArrayQ  KICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType.TypeBaseExpander ��Name �� CornerRadius J� Opacity �Name d� 	IsChecked �� Path �� Mode �� RelativeSource ��Name `� 	Converter �� ElementName
 � Tag�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      1system&clr-namespace:System;assembly=mscorlib  5      L
converters=clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.Converters  5      blocalControlsCSDLTypeHclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType  5      %  &	        &	      &	 �    '  ]    7  7      5      6)   �� 5
      "  d�6.   .�5   
   ��  � ��$ Stretch=�67   �� 5   
    � ��
 �   �6'   �� 5   
    � �� 5      �� 5      " d�6"   .R�5      �  5      �� 5      �� 5      $
��Auto �6/   .+�5      �� $ content��6+   #��z��6<   #��z��5      #��z��6.   ��. 5      �� 5      $ arrow��6%   $��1��64   $��5q�6D   $��Center=�6O   $��Right=�6j    5      �� 5   "   .+�5      F� "����        ���- ��- р�[     	���	#FF666666$��2��6J   F� 5      "����        ���- ��- р�[     	���	#FF666666$��2��6J   5      5        5!      P� 5"      	 �@d�	IsChecked$

 TrueY�67    5#      �� 5$   "   .��5%   &   �� .��5&   *   W� $	 180X�6:   $ arrow��6C   $ LayoutTransform.Angle�6a   $ 
0:00:00.25D�6�   5'   '   5(   #    5*      �� 5+   "   .��5,   &   �� .��5-   *   W� $ 0X�6:   $ arrow��6A   $ LayoutTransform.Angle�6_   $ 
0:00:00.25D�6�   5.   '   5/   #   51      P� 52      	 � {�
 .  . �53      �� $ arrow��6%    �@J�Opacity$	 0.3Q�6K   54      56      58      59      �� 5;      .�5<      ��  � �� 5=      �� 5>      .R�5?      �� ._�5@      ��  . $��0q�6-   
���   �$	 1 2R�6G   $��1��6]   5A      5B      5D      5E      �� 5G      "   6	   .�5H      ��  � ��# � ��6!   �� 5I       � ��
 ���� 6!   �� 5J       � ��$ Stretch=�61   �� 5K       � ��$ Stretch=�6/   �� 5L       � ��
 ���� 6"   �� 5M       � ��$ 1q�6&   �� 5N       � �� 5O      �� 5P      " 9�6   .R�5Q      �� $ 
bdExpander��6    . #��z��6=   $ 8��6g   #��z��6x   #��z��6�   # z 6�   ._�5R      ]� .+�5S   	   � $ 	grdHeader��6   $	��Top=�6!   $��1q�66   .+�5T   "   d� $��1��6/   #��z��6?   #��z��6�   8��   6�   �� $ 
IsExpanded�$ TwoWay=� �� *TemplatedParent+.��5U   &   �� $ 
HeaderSite��6�   #��z��65   #��z��6   #��z��6�   5V   #   5W      � 5X      $ 
expandSite��6#   $��Bottom=�67   ��5Y   "   `� 5Z   &   8  .1�5[   *   �� $ ActualHeight�62   $ expandSiteContent��6F   �� 5\   *   $	 Tag�62    6=   �� *Self+5]   '    5_   "   X�5`   &   0.0Q�69   .+�5b   "   �� $��Hidden=�6/   $��Hidden=�6T   .��5c   &   �� $��expandSiteContent��67   |�.  #��z��5d      #��z��5e      #��z��5f      #��z��5g      5h   #   5i      5j   	   5k       5l      P� 5m      	 �@9�
IsExpanded
 .  5n      �� 5o   "   .��5p   &   �� .��5q   *   W� $	 1.0X�6:   $ 
expandSite��6C   $	 Tag�6f   $ 
0:00:00.25D�6�   5r   '   5s   #    5u      �� 5v   "   .��5w   &   �� .��5x   *   W� $ 0X�6:   $ 
expandSite��6A   $	 Tag�6d   $ 
0:00:00.25D�6�   5y   '   5z   #   5|      P� 5}      	 � {�
 .  . �5~   	   �� # � ��6&    � ��5   	   5�      5�      5�      5�      