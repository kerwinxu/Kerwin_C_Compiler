   M S B A M L   `   `   `  ����b  ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeK*clr-namespace:ICSharpCode.SharpDevelop.GuiICSharpCode.SharpDevelop.Gui  5      j fICSharpCode.SharpDevelop.Widgets, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee}Xclr-namespace:ICSharpCode.SharpDevelop.Widgets;assembly=ICSharpCode.SharpDevelop.Widgets ICSharpCode.SharpDevelop.Widgets 5      A    ;ICSharpCode.SharpDevelop.Gui.OptionPanels.ExternalToolPanel   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee5core(http://icsharpcode.net/sharpdevelop/core    5      6gui*clr-namespace:ICSharpCode.SharpDevelop.Gui    5      hwidgetsXclr-namespace:ICSharpCode.SharpDevelop.Widgets;assembly=ICSharpCode.SharpDevelop.Widgets    5      .��5      �   � RowDefinitions  5	      �� 5
      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $��15 �6   6!   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#    � ColumnDefinitions 5      �� 5      $
��Auto �6   6%   �� 5      $��* �6   $��20��6    60   �� 5      $��* �6   $��20��6    60   �� 5      $��45 �6   6$   .+�5      �� $��2��6
   ��6   5  /ICSharpCode.Core.Presentation.LocalizeExtension  *(&Dialog.Options.ExternalTool.ToolsLabel+6a   � 5      $��1��6
   $��6��6     5      �� 5      $��* �6   6!   �� 5       $��* �6   6!   �� 5!      $��* �6   6!   �� 5"      $��* �6   6!    5%      �� 5&      6   �� 5'      $	��100 �6   6%   .+�5*      �� -   5         ��Name$ listBox��5*      $��4��6    �� SelectionMode$ Extended=�5+       �� SelectedItem 5-      �� *SelectedTool+5.      �� 50      -   5         ��Name$ 	addButton��50      $��1��6   $��5,0,5,0q�6/   0  *ICSharpCode.Core.Presentation.GlobalStyles   ButtonStyle#��Z 51      ��53        *Global.AddButtonText+6=   �� 55      -   5        $ removeButton��55      $��1��6"   $��1��6/   $��5,0,5,0q�6?   #��Z 56      {�57      �� *ButtonsEnable+��58        *Global.RemoveButtonText+59   )   �� 5;      -   5        $ upButton��5;      $��2��6   $��1��6+   $��5,0,5,0q�6;   #��Z 5<      ��5=        *Global.MoveUp+5>   %   �� 5@      -   5        $ 
downButton��5@      $��3��6    $��2��6-   $��1��6>   $��5,0,5,0q�6N   #��Z 5A      ��5B        *Global.MoveDown+5C   '   5D      �� 5F      $��3��6
   {�6   �� *
EditEnable+��5G   
     *(&Dialog.Options.ExternalTool.TitleLabel+5H      �� 5J      $��3��6   $��1��6   $��3��6)   {�5K      �� *
EditEnable+��5L      �� *SelectedTool.MenuCommand+ �� UpdateSourceTrigger$ PropertyChanged=�.��6Z   5M      �� 5O      $��4��6
   {�6   �� *
EditEnable+��5P   
     **(Dialog.Options.ExternalTool.CommandLabel+5Q      �� 5S      -   5         ��Name$ commandTextBox��5S      $��4��6$   $��1��61   $��2��6A   {�5T      �� *
EditEnable+��5U      �� *SelectedTool.Command+$ PropertyChanged=�.��6V   5V      �� 5X      -   5        $��4��5X      $��4��6   $��5,0,5,0q�6*   $	��...��5[      {�5Y      �� *
EditEnable+5\      �� 5^      $��5��6
   {�6   �� *
EditEnable+��5_   
     *+)Dialog.Options.ExternalTool.ArgumentLabel+5`      �� 5b      -   5        $ argumentTextBox��5b      $��5��6%   $��1��62   $��2��6B   {�5c      �� *
EditEnable+��5d      �� *SelectedTool.Arguments+$ PropertyChanged=�.��6X   	 � ContextMenu	 5e      �� 5f      -	   5        ��5f      �� *ArgumentContextMenu+��5h      �� 5i      .R�5j   	   m� ��6   �� *Key+6+   5k   	   5m      .��5n      5o      �� 5q      -
   5        $��5��5q      $��4��6   $��5,0,5,0q�6)   $��>��5s      {�5r      �� *
EditEnable+5u      �� 5x      $��6��6
   {�6   �� *
EditEnable+��5y   
     *-+Dialog.Options.ExternalTool.WorkingDirLabel+5z      �� 5|      -   5        $ workingDirTextBox��5|      $��6��6'   $��1��64   $��2��6D   {�5}      �� *
EditEnable+��5~      �� *SelectedTool.InitialDirectory+$ PropertyChanged=�.��6_   	 5      �� 5�      -   5        ��5�      �� *WorkingDirContextMenu+��5�      �� 5�      .R�5�   	   m� ��6   �� *Key+6+   5�   	   5�      .��5�      5�      �� 5�      -   5        $��6��5�      $��4��6   $��5,0,5,0q�6)   $��>��5�      {�5�      �� *
EditEnable+5�      �� 5�      -   5        
 ��Name$
 promptArgsCheckBox��5�      $��7��6)   $��3��66   $
��0, 5q�6J   {�5�      �� *
EditEnable+��5�        *31Dialog.Options.ExternalTool.PromptForArgsCheckBox+ d� 	IsChecked 5�      �� *!SelectedTool.PromptForArguments+5�      �� 5�      -   5        $
 useOutputPadCheckBox��5�      $��8��6+   $��3��68   {�5�      �� *
EditEnable+��5�        *-+Dialog.Options.ExternalTool.UseOutputWindow+ 5�      �� *SelectedTool.UseOutputPad+5�      5�      5�      