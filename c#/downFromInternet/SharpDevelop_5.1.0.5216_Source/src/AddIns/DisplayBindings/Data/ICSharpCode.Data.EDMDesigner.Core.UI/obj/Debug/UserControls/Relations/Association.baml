   M S B A M L   `   `   `  ����_  [ICSharpCode.Data.EDMDesigner.Core.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null�Iclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Relations;ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Relations  5      �Kclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu=ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu  5      q=clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.Converters/ICSharpCode.Data.EDMDesigner.Core.UI.Converters  5      M    GICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Relations.Association   5   &   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      llocalControlsRelationsIclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Relations     5      ilocalControlsMenuKclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu     5      blocalBindindingConverter=clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.Converters     5      N   HICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Relations.RelationBase    PreviewMouseDown$!  AssociationPreviewMouseDown��5      |�.  � 	Resources 5
       �� MergedDictionaries �� SourceR   LICSharpCode.Data.EDMDesigner.Core.UI.Converters.AssociationToMarginConverter    AssociationToMarginConverterU   OICSharpCode.Data.EDMDesigner.Core.UI.Converters.AssociationToAlignmentConverter # AssociationToAlignmentConverterS   MICSharpCode.Data.EDMDesigner.Core.UI.Converters.AssociationToVisibleConverter ! AssociationToVisibleConverterO   IICSharpCode.Data.EDMDesigner.Core.UI.Converters.BoolToVisibilityConverter  BoolToVisibilityConvertere   _ICSharpCode.Data.EDMDesigner.Core.UI.Converters.DesignerAssociationToSelectionLocationConverter 3 /DesignerAssociationToSelectionLocationConverter�� 5   
    5      �� 5      $2 ,..\SelectionRectangleResourceDictionary.xaml?�6%   %�   &	        &	      &	 &     &	 9     &	 L       5      6D     5      6G     5      6E     5      6A     5      6W   5       � ContextMenu 5      O   IICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu.ContextMenu  5   
   .@�5      L   FICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu.MenuItem  -   5          Name$ deleteMenuItem��5   )   M	   GICSharpCode.Data.EDMDesigner.Core.UI.UserControls.Relations.Association 	  
DeleteText#��Z 6A    	  DeleteCommand m� Command# Z 6�   	 m� InputGestureText$		 Del��6�   
 m� Icon
 5      �� 5      $)��#../../CSDLType/Resources/Delete.png��6   $��16��6I   $��16��6T   5      Q
   KICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu.MenuSeparator
  5        5      -   5        $ propertiesMenuItem��5   )    	  PropertiesText#��Z 6E    	  PropertiesCommand# Z 6�   $	 F4��6�     5       -   5        $ mappingMenuItem��5    )    	  MappingText#��Z 6B    	  MappingCommand# Z 6�   $	 Ctrl+Shift+M��6�   5!       J� InputBindings 5$      �� 5%   
   
 �� Key$ Delete��6    �� Command# Z 6"   �� 5&   
   $ F4��6   # Z 6   �� 5'   
   $ M��6    �� 	Modifiers$ 
CTRL+Shiftf�6   # Z 64   .��5*      � .+�5+   
   �� -   5         ��Name$
 line��5+      
���   �	 �� X1 5,      ��  �� RelativeSource �� *FindAncestor+ �� AncestorType" 	  �� Path$ X1� �� NotifyOnTargetUpdated . 	 �� X2 5-      ��  �� *FindAncestor+" 	 $ X2� . 	 �� Y1 5.      ��  �� *FindAncestor+" 	 $ Y1� . 	 �� Y2 5/      ��  �� *FindAncestor+" 	 $ Y2� . y�50      ��  �� *FindAncestor+" 	  �� 	Converter# [  �� ConverterParameter$ 1��6�   �� 51   
   -   5        $ line2��51      
���   � 52      ��  �� *FindAncestor+" 	 $ X2� .  53      ��  �� *FindAncestor+" 	 $ X3� .  54      ��  �� *FindAncestor+" 	 $ Y2� .  55      ��  �� *FindAncestor+" 	 $ Y3� . y�56      ��  �� *FindAncestor+" 	 # [ 6�   �� 57   
   -   5        $ line3��57      
���   � 58      ��  �� *FindAncestor+" 	 $ X3� .  59      ��  �� *FindAncestor+" 	 $ X4� .  5:      ��  �� *FindAncestor+" 	 $ Y3� .  5;      ��  �� *FindAncestor+" 	 $ Y4� . y�5<      ��  �� *FindAncestor+" 	 # [ 6�   �� 5=   
   -   5         ��Name$	 tb1��5=      $	��Top=�6�  
����  ���6!   ��  �� *FindAncestor+" 	 $ FromCardinality���6�   ��  �� *FindAncestor+" 	 # [ $ X1����6�  ��  �� *FindAncestor+" 	 # [  $
 From��y�6�  ��  �� *FindAncestor+" 	 $! FromTypeDesigner.IsExpanded�# [ �� 5>   
   -   5        $	 tb2��5>      $	��Top=�6�  
����  ���6!   ��  �� *FindAncestor+" 	 $ ToCardinality���6�   ��  �� *FindAncestor+" 	 # [ $ X2����6�  ��  �� *FindAncestor+" 	 # [  $ To��y�6�  ��  �� *FindAncestor+" 	 $ ToTypeDesigner.IsExpanded�# [ �� 5?   
   -	   5         ��Name$ selectionRectangle1��5?      $
��Left=�61   $	��Top=�6L   ��6d   ��  �� *FindAncestor+" 	 # [ $ 1��y�6@  ��  �� *FindAncestor+" 	 $ 
IsSelected�# [ �� 5@   
   -
   5        $ selectionRectangle2��5@      $
��Left=�61   $	��Top=�6L   ��6d   ��  �� *FindAncestor+" 	 # [ $ 2��y�6@  ��  �� *FindAncestor+" 	 $ 
IsSelected�# [ 5A      5B      