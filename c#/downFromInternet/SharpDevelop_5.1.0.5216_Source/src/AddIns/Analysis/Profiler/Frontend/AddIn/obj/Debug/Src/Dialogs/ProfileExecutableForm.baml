   M S B A M L   `   `   `  ����  ICSharpCode.Profiler.AddIn>    8ICSharpCode.Profiler.AddIn.Dialogs.ProfileExecutableForm   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeb ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee3sd(http://icsharpcode.net/sharpdevelop/core   5   	   5core(http://icsharpcode.net/sharpdevelop/core   5   	   j fICSharpCode.SharpDevelop.Widgets, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee9widgets+http://icsharpcode.net/sharpdevelop/widgets  5   	     � WindowStartupLocation$  CenterScreen=�5   K   0  *ICSharpCode.Core.Presentation.GlobalStyles   DialogWindowStyle#��Z 5   	    � WindowStyle$ 
ToolWindow=�5	   	    � 
ResizeMode$ NoResize=�6"    � SizeToContent$ WidthAndHeight=�68    � Title 5   	   5  /ICSharpCode.Core.Presentation.LocalizeExtension  *-+AddIns.Profiler.ProfileExecutableForm.Title+.��5
      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $
��Wrap=�6   $��3��6(   $��3q�6<   ��6G     *75AddIns.Profiler.ProfileExecutableForm.DescriptionText+�� 5   
   $��1��6   ��6     *31AddIns.Profiler.ProfileExecutableForm.ExePathText+�� 5   
   -   5        $��
txtExePath��5      $��3q�6   $��1��6/   $��1��6?   �� 5   
   -   5        $��3q�5      $��5,0,5,0q�6   $��2��6.   $��1��6>   .��6f   ...6k   �� 5   
   $��2��6   ��6     *64AddIns.Profiler.ProfileExecutableForm.WorkingDirText+�� 5   
   -   5        $��txtWorkingDir��5      $��3q�6   $��2��62   $��1��6?   �� 5   
   -   5        $��3q�5      $��5,0,5,0q�6   $��2��6.   $��2��6>   .��6e   ...6j   �� 5   
   $��3��6   ��6     *75AddIns.Profiler.ProfileExecutableForm.CmdLineArgsText+�� 5   
   -   5        $��txtArgs��5      $��3q�6   $��1��6,   $��2��6<   $��3��6P   =  7ICSharpCode.SharpDevelop.Widgets.UniformGridWithSpacing  5        A� Columns$ 2��6#   $��3��6/   $��4��6C   $��Center=�6P   $��0,4,0,12q�6m   .+�5!      �� -   5        	 �� 	IsDefault	 . 
   ButtonStyle#��Z
 5$      ��5"        *1/AddIns.Profiler.ProfileExecutableForm.StartText+5%      �� 5&      -   5         �� IsCancel . #��Z
 5)      ��5'        *Global.CancelButtonText+5*      5+      5,      5-      