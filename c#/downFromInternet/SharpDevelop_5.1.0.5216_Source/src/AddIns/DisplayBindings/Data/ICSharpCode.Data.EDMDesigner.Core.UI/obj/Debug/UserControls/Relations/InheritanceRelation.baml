   M S B A M L   `   `   `  ����_  [ICSharpCode.Data.EDMDesigner.Core.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null�Iclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Relations;ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Relations  5      �Kclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu=ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu  5      q=clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.Converters/ICSharpCode.Data.EDMDesigner.Core.UI.Converters  5      U    OICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Relations.InheritanceRelation   5   &   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      llocalControlsRelationsIclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Relations     5      ilocalControlsMenuKclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu     5      blocalBindindingConverter=clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.Converters     5      N   HICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Relations.RelationBase    PreviewMouseDown$)  #InheritanceRelationPreviewMouseDown��5      |�.  � 	Resources 5
       �� MergedDictionaries �� Source[   UICSharpCode.Data.EDMDesigner.Core.UI.Converters.InheritanceRelationToVisibleConverter )  %InheritanceRelationToVisibleConverterO   IICSharpCode.Data.EDMDesigner.Core.UI.Converters.BoolToVisibilityConverter  BoolToVisibilityConverterm   gICSharpCode.Data.EDMDesigner.Core.UI.Converters.DesignerInheritanceRelationToSelectionLocationConverter ; 7DesignerInheritanceRelationToSelectionLocationConverter�� 5   
    5      �� 5      $2 ,..\SelectionRectangleResourceDictionary.xaml?�6%   %W   &	        &	      &	 &       5      6M     5      6A     5      6_   5       � ContextMenu 5      O   IICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu.ContextMenu  5   
   .@�5      L   FICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu.MenuItem  -   5          Name$ deleteMenuItem��5   )   U   OICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Relations.InheritanceRelation   
DeleteText#��Z 6A      DeleteCommand m� Command# Z 6�   	 m� InputGestureText$		 Del��6�   
 m� Icon
 5      �� 5      $)��#../../CSDLType/Resources/Delete.png��6   $��16��6I   $��16��6T   5      5       J� InputBindings 5      �� 5    
   
 �� Key$ Delete��6    �� Command# Z 6"   .��5#      � .+�5$   
   �� -   5         ��Name$
 line��5$      
���   �	 �� X1 5%      ��  �� RelativeSource �� *FindAncestor+ �� AncestorType"   �� Path$ X1� �� NotifyOnTargetUpdated . 	 �� X2 5&      ��  �� *FindAncestor+"  $ X2� . 	 �� Y1 5'      ��  �� *FindAncestor+"  $ Y1� . 	 �� Y2 5(      ��  �� *FindAncestor+"  $ Y2� . �� 5)   
   -   5        $ line2��5)      
���   � 5*      ��  �� *FindAncestor+"  $ X2� .  5+      ��  �� *FindAncestor+"  $ X3� .  5,      ��  �� *FindAncestor+"  $ Y2� .  5-      ��  �� *FindAncestor+"  $ Y3� . y�5.      ��  �� *FindAncestor+"   �� 	Converter# [  �� 5/   
   -   5        $ line3��5/      
���   � 50      ��  �� *FindAncestor+"  $ X3� .  51      ��  �� *FindAncestor+"  $ X4� .  52      ��  �� *FindAncestor+"  $ Y3� .  53      ��  �� *FindAncestor+"  $ Y4� . y�54      ��  �� *FindAncestor+"  # [  �� 55   
   -   5        $ 
lineArrow1��55      
���   � 56      ��  �� *FindAncestor+"  $ X1Arrow� .  57      ��  �� *FindAncestor+"  $ X3Arrow� .  58      ��  �� *FindAncestor+"  $ Y1Arrow� .  59      ��  �� *FindAncestor+"  $ Y3Arrow� . �� 5:   
   -   5        $ 
lineArrow2��5:      
���   � 5;      ��  �� *FindAncestor+"  $ X2Arrow� .  5<      ��  �� *FindAncestor+"  $ X3Arrow� .  5=      ��  �� *FindAncestor+"  $ Y2Arrow� .  5>      ��  �� *FindAncestor+"  $ Y3Arrow� . �� 5?   
   -   5        $ 
lineArrow3��5?      
���   � 5@      ��  �� *FindAncestor+"  $ X1Arrow� .  5A      ��  �� *FindAncestor+"  $ X2Arrow� .  5B      ��  �� *FindAncestor+"  $ Y1Arrow� .  5C      ��  �� *FindAncestor+"  $ Y2Arrow� . �� 5D   
   -   5         ��Name$ selectionRectangle1��5D      $
��Left=�61   $	��Top=�6L   ��6d   ��  �� *FindAncestor+"  # [  �� ConverterParameter$ 1��y�6P  ��  �� *FindAncestor+"  $ 
IsSelected�# [ �� 5E   
   -	   5        $ selectionRectangle2��5E      $
��Left=�61   $	��Top=�6L   ��6d   ��  �� *FindAncestor+"  # [ $ 2��y�6P  ��  �� *FindAncestor+"  $ 
IsSelected�# [ 5F      5G      