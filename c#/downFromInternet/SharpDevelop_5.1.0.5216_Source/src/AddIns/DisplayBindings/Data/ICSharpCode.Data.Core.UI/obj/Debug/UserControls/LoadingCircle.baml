   M S B A M L   `   `   `  ����  ICSharpCode.Data.Core.UI9    3ICSharpCode.Data.Core.UI.UserControls.LoadingCircle   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � 	Resources  5       #  RenderDoubleAnimationStoryboard �� 
TargetName �� TargetProperty W� From	 W� To g� Duration g� RepeatBehavior - )OpacityDoubleAnimationStoryboardToVisible g� FillBehavior / +OpacityDoubleAnimationStoryboardToUnvisible��%�  &	        &	 �     &	 >    �� 5   
   $ 
MainCanvas��6=   .��5      W� $/ )(RenderTransform).(RotateTransform.Angle)�6   $ 0X�6d   $	 359X�6m   $ 0:0:0.75D�5      $ Forever��6   5      �� 5	   
   $ 
MainCanvas��6G   .��5
      W� $ Opacity�6   $ 1X�6B   $ 0:0:0.5D�6I   $ HoldEnd=�6\   5      �� 5   
   -   5        $ 
MainCanvas��5   I   .��5      W� $ Opacity�6   $ 0X�6B   $ 0:0:0.5D�6I   $ HoldEnd=�6\   5      5      .��5      �� -   5         ��Name$ 
MainCanvas��5      	 J� Opacity$	 0Q�6!   z�5   
   �� 5      -   5        CanvasRotateTransformation��
 �� Angle$
 0Q�5   B   .+�5   
   A� -   5         A�Name$ BackgroundEllipse��5   !   
�������5      5      