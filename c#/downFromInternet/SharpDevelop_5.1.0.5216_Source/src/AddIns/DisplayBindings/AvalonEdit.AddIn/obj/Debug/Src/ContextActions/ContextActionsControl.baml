   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5      Z VICSharpCode.AvalonEdit.AddIn, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nulli9clr-namespace:ICSharpCode.AvalonEdit.AddIn.ContextActions+ICSharpCode.AvalonEdit.AddIn.ContextActions 5      G   AICSharpCode.AvalonEdit.AddIn.ContextActions.ContextActionsControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      4s&clr-namespace:System;assembly=mscorlib     5      Klocal9clr-namespace:ICSharpCode.AvalonEdit.AddIn.ContextActions     5        � 	Resources  5         ClearButton �� 
TargetType �� Property �� Value �� 
TargetType �� Padding �� CornerRadius �� Triggers P� Property	 P� Value
 �� 
TargetName �� 
StartPoint �� EndPoint � Color � Offset��%  &	        �� 5      " ��6   .�5      ��  �@�FocusVisualStyle 6(   Z� 6;   �� 5       � �� 5      �� 5      " ��6   .R�5      �� $��Border��6   $ 2q�5      $��1q�5      $ 1��5      
������ 
������ ._�5   	   �� 6   5   	    5      P� 5   	    �@J�IsMouseOver	 . . �5   
   �� $
 Border��6'    � �� �#E8F2FF5      5   
   P� 5    	    �@J�	IsFocused	 . . �5!   
   �� $
 Border��6'    � �� 5"      �� 5#      $	 0,0&�6    $	 0,1&�61   .��5$      � $ #E5F1FF��6   $ 0Q�6*   � 5%      $ #D6E9FF��6   $	 0.5Q�6*   5&      5+      �� 5,   
   $
 Border��6(    � �� �#4F7AA86<   5-   
   5/      51      52      53      .��56      R� -   5         R�Name$ TreeView��56      $��0q�66   ��6   �� ��58      ��  �� Path$ ItemTemplate� �� RelativeSource ��  �� AncestorTypeG  AICSharpCode.AvalonEdit.AddIn.ContextActions.ContextActionsControl"  ��59      �� 5:      $	 0,0&�6   $	 1,0&�6*   .��5;      � $ White��6   5<      ��5>      �� 5?      " Q�6   .�5@      ��  � �� 5A      �� 5B      " Q�6   .R�5C   	   �� .+�5E   
   �� -   5        #��[  5G   
   ��5F   
   �� *ActionCommand+.��5L      ��  J� SnapsToDevicePixels . ._�5M      �� $��PART_Header��6  #��z��6   #��z��6W    �� HeaderStringFormat �� ContentStringFormat# z 6�   $��Header��6�   $��Stretch=�5N      # z 6*   5O      5P      �� 5Q   
   $ 14 0 0 0q�6   ._�5R      �� $��	ItemsHost��6   5S      5T   
    5U   	   5b   	   5d      �� 5f       �@Q�
IsExpanded . 62   �� 5h       � |� .  62   5i      5k      5m      