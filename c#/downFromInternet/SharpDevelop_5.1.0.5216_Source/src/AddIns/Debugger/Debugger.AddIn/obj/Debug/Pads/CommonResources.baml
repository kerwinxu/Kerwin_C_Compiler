   M S B A M L   `   `   `  ����L  HDebugger.AddIn, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Debugger.AddIn.Pads.ControlsDebugger.AddIn.Pads.Controls  5          CommonResources\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeb ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee^ ZICSharpCode.TreeView, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee6  0ICSharpCode.Core.Presentation.ContextMenuBuilder   menuBuilder  itemContainerStyle  �� 
TargetType �� Property �� Value �� 
TargetType �� Padding J� SnapsToDevicePixels �� Triggers P� Property P� Value(  "ICSharpCode.TreeView.SharpGridView  variableGridView	 �� AllowsColumnReorder
 �� Width5  /ICSharpCode.Core.Presentation.LocalizeExtension �� CellTemplate �� Orientation,  &ICSharpCode.TreeView.SharpTreeNodeView6   0Debugger.AddIn.Pads.Controls.AutoCompleteTextBox  Name   Text   
IsEditable � ContextMenu `� 	Converter �� Path  callstackGridView  breakpointsGridView d� 	IsChecked �� Mode  loadedModulesGridView �� DisplayMemberBinding  threadsGridView   5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      :x,http://schemas.microsoft.com/winfx/2006/xaml     5      4local*clr-namespace:Debugger.AddIn.Pads.Controls  5      5core(http://icsharpcode.net/sharpdevelop/core   5      5tv,http://icsharpcode.net/sharpdevelop/treeview  5      %�  &	        &	      &	 �    7   7   7   &	 �    &	 �    &	 �
    &	 �      5	      6   �� 5      "  ��6$   .�5      ��  � ��
 ���� 6!   �� 5       � ��$ Center=�6/   �� 5       � �� 5      �� 5      " ��6   .R�5      �� $��Bd��6   #��z��5      #��z��5      #��z��5      # z��5       . ._�5      �� #��z��6   # z 5      5       5      P� 5       � {� .  . �5   	   �� # � ��6&    � ��5   	   5      5!      5"        5%      	 .  P�5&      �� 5'      $	
 200��6`   ��6     *42MainWindow.Windows.Debug.LocalVariables.NameColumn+ 5(      �� 5)      .R�5*      �� $ 
Horizontal=�6   .+�5+   	       5,   	   $
 name��6#   $��-6 0 0 0q�61   $	��100��6D    6S   �� *	Node.Name+ 6n   �� *Node.CanSetName+ 5-   
   `� 5.      8   .1�5/      �� $$ Node.ContextMenuAddInTreeEntry�6   �� 50      $
 Node�6   51      53   
   54   	   55      57      �� 58      $	
 200��6a   ��6     *53MainWindow.Windows.Debug.LocalVariables.ValueColumn+ 59      �� 5:      .R�5;        $	��100��5<       5=      �� *
Node.Value+ 5>      �� *Node.CanSetValue+ 5?   	   `� 5@   
   8  .1�5A      �� $$ Node.ContextMenuAddInTreeEntry�6   �� 5B      $
 Node�6   5C      5E   	   5F      5H      �� 5I      $	
 200��6`   ��6     *42MainWindow.Windows.Debug.LocalVariables.TypeColumn+ 5J      �� 5K      .R�5L        $	��100��6"    .   61   �� *	Node.Type+ 5M   	   `� 5N   
   8  .1�5O      �� $$ Node.ContextMenuAddInTreeEntry�6   �� 5P      $
 Node�6   5Q      5S   	   5T      5V      5X      �� 5[      	 .  .P�5\      �� $	
 400��68   ��6     *Global.Name+ 5]      �� 5^      .R�5_      �� $ 
Horizontal=�6   .+�5`      �� $��
1, 1, 5, 1q�6-   ��6   �� *ImageSource+6-   �� 5a      ��6   �� *Name+��6(   �� *	FontColor+5b      5c      5e      5f      �� 5i      	 .  .P�5j      �� $�� ��6    5k      �� 5l      .R�5m      ��  6   �� $ 	IsEnabled�$ TwoWay=�5n      5p      �� 5q      ��6     *-+MainWindow.Windows.BookmarkPad.LocationText+ 5r      �� 5s      .R�5t      �� $ 
Horizontal=�6   .+�5u      �� $��
1, 1, 5, 1q�6-   ��6   �� *ImageSource+6-   �� 5v      ��6   �� *FileNameAndLineNumber+5w      5x      5z      �� 5{      ��6     *JHMainWindow.Windows.Debug.Conditional.Breakpoints.ConditionalColumnHeader+ 5|      �� 5}      .R�5~        $	��100��6<    6!   �� *	Condition+6<   5      5�      5�      �� 5�      	 .  .P�5�      �� $	
 250��68   ��6     *Global.Name+ 6D   �� *Name+�� 5�      $	
 100��6[   ��6     *0.MainWindow.Windows.Debug.Modules.AddressColumn+ 6g   �� *	Address+�� 5�      $	
 250��68   ��6     *Global.Path+ 6D   �� *Path+�� 5�      $
 80��6Y   ��6     *.,MainWindow.Windows.Debug.Modules.OrderColumn+ 6d   �� *Order+�� 5�      $	
 130��6[   ��6     *0.MainWindow.Windows.Debug.Modules.SymbolsColumn+ 6g   �� *	Symbols+5�      �� 5�      	 .  .P�5�      �� $	
 100��66   ��6     *	Global.ID+ 6B   �� *ID+�� 5�      $	
 300��68   ��6     *Global.Name+ 6D   �� *Name+�� 5�      $	
 120��6V   ��6     *+)MainWindow.Windows.Debug.Threads.Priority+ 6b   �� *
Priority+�� 5�      $
 80��6T   ��6     *)'MainWindow.Windows.Debug.Threads.Frozen+ 6_   �� *Frozen+5�      5�      