   M S B A M L   `   `   `  ����_  [ICSharpCode.Profiler.Controls, Version=1.0.6251.41834, Culture=neutral, PublicKeyToken=nullM+clr-namespace:ICSharpCode.Profiler.ControlsICSharpCode.Profiler.Controls  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089 #  CustomGridViewScrollViewerStyle  �� 
TargetType �� Property �� Value �� 
TargetType J� SnapsToDevicePixels � ColumnDefinitions � RowDefinitions! �� ColumnHeaderContainerStyle �� Path	 �� RelativeSource
 �� ColumnHeaderTemplate# �� ColumnHeaderTemplateSelector �� ColumnHeaderStringFormat �� AllowsColumnReorder �� ColumnHeaderContextMenu �� ColumnHeaderToolTip �� Columns �� Orientation � Minimum � Cursor � Maximum �� Mode �� ViewportSize � Value �� ElementName-   'System.Windows.Input.KeyboardNavigation    DirectionalNavigation �� CanContentScroll �� ScrollableWidth �� ViewportWidth, �� %ComputedHorizontalScrollBarVisibility �� ScrollableHeight �� ViewportHeight*  �� #ComputedVerticalScrollBarVisibility! �� BasedOn�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      5local+clr-namespace:ICSharpCode.Profiler.Controls  5      %�  &	        (�� J    5[      **(local:CustomGridView.CustomGridViewStyle+)7#�7   �� 5      "  ��5   	   .�5   
   ��  � |� .  6&   �� 5   
    � �� 5	      �� 5
      " ��6"   .R�5      � #��z��6    .  5      �� 5      $��* �6/   �� 5      $
��Auto �6/    5      �� 5      $��* �6,   �� 5      $
��Auto �6,   .+�5      ]� #��z��6$   .+�5      �� $	��Top=�6+   $��Hidden=�5      $��Hidden=�5      |�.  .��5   "   �� # z 5   
    5   
   �� $5 /TemplatedParent.View.ColumnHeaderContainerStyle�	 �� *TemplatedParent+
 5   
   �� $/ )TemplatedParent.View.ColumnHeaderTemplate�	 �� *TemplatedParent+ 5   
   �� $7 1TemplatedParent.View.ColumnHeaderTemplateSelector�	 �� *TemplatedParent+ 5   
   �� $3 -TemplatedParent.View.ColumnHeaderStringFormat�	 �� *TemplatedParent+ 5   
   �� $. (TemplatedParent.View.AllowsColumnReorder�	 �� *TemplatedParent+ 5    
   �� $2 ,TemplatedParent.View.ColumnHeaderContextMenu�	 �� *TemplatedParent+ 5!   
   �� $. (TemplatedParent.View.ColumnHeaderToolTip�	 �� *TemplatedParent+ 5$   *   �� $" TemplatedParent.View.Columns�62   	 6V   �� *TemplatedParent+5&   #   5'      ]� 5)      $��Bottom=�6(   .+�5*   "   �� $��Column0ScrollBar��5+   
   $ 
Horizontal=�5,   
   $	 0.0Q�5-   
   $y�Visible=�50   
   $ Arrow��51   
   $
��Left=�53   
    5.   
   �� $+ %TemplatedParent.View.MaxOverflowWidth�	 �� *TemplatedParent+$ OneWay=� 5/   
   �� $1 +TemplatedParent.View.Columns[0].ActualWidth�	 �� *TemplatedParent+$ OneWay=� 52   
   �� $0 *TemplatedParent.View.CurrentScrollPosition�	 �� *TemplatedParent+$ TwoWay=���54   
   �� $1 +TemplatedParent.View.Columns[0].ActualWidth�	 �� *TemplatedParent+$ OneWay=��� 55   "   ��6,   �� $ 
Background�$ Column0ScrollBar��56      �� 58      $!��PART_ScrollContentPresenter��65   $ Local=�59   	   #��z��5:   	   #��z��5;   	   # z��5<   	   # z 5=   	   5>      �� 5?      $��PART_HorizontalScrollBar��6$   $ 
Horizontal=�5@      $��1��5A      $	 0.0Q�5B      # z 6    # z 5C      #y�z 5D      $ Arrow��5E       5F      �� $ HorizontalOffset�	 �� *TemplatedParent+$ OneWay=��� 5G      $��PART_VerticalScrollBar��6$   $ Vertical=�5H      $��1��5I      $	 0.0Q�5J      # z 6    # z 5K      #y�z  5L      $ Arrow��5M       5N      �� $ VerticalOffset�	 �� *TemplatedParent+$ OneWay=�]� 5O      $��1��6$   $��1��64   ��.  ��5Q      �� $ 
Background�$ PART_VerticalScrollBar��.+�5R      �� $
��Left=�6(   $��1��6>   
�������#y�z  6U   �� 5S      $	��Top=�6(   $��1��6=   
�������#y�z 6U   5T      5U      5V      5X      5Y      �� 5[      "  ��5\   	   8!   .�5^   
   ��  � �� 5_      �� 5`      " ��6"   .R�5a      �� $��Bd��6   #��z��5b      #��z��5c      #��z��5d       . ._�5f      ]� .+�5g      �� #��z��6+   8�� .��5i   "   �� # z 61   5j      5k      5l      5m      5o      5p      5q      