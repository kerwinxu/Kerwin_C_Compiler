   M S B A M L   `   `   `  ����R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R8clr-namespace:System.ComponentModel;assembly=WindowsBaseSystem.ComponentModel  5      _ [ICSharpCode.Data.EDMDesigner.Core.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullu?clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls1ICSharpCode.Data.EDMDesigner.Core.UI.UserControls 5      �Kclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu=ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu 5      �Hclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType 5      q=clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.Converters/ICSharpCode.Data.EDMDesigner.Core.UI.Converters 5      Q   KICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType.TypeBaseDesigner   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5      PwindowsBase8clr-namespace:System.ComponentModel;assembly=WindowsBase      5      YlocalControls?clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls      5      ilocalControlsMenuKclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu      5      jlocalControlsCSDLTypeHclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType      5      _localBindingConverter=clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.Converters      5      \ XICSharpCode.Data.EDMDesigner.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullBcsdlDomainModel,http://icsharpcode.net/data/edmdesigner/csdl  5	      -   5        |�.   � 	Resources  5      O  IICSharpCode.Data.EDMDesigner.Core.UI.Converters.BoolToVisibilityConverter #  BoolToVisibilityConverterHidden   Hidden & "BoolToVisibilityConverterCollapsedR  LICSharpCode.Data.EDMDesigner.Core.UI.Converters.IUITypeToBackgroundConverter   IUITypeToBackgroundConverterS  MICSharpCode.Data.EDMDesigner.Core.UI.Converters.IUITypeToBorderBrushConverter ! IUITypeToBorderBrushConverterR  LICSharpCode.Data.EDMDesigner.Core.UI.Converters.UIPropertyToOpacityConverter   UIPropertyToOpacityConverterR  LICSharpCode.Data.EDMDesigner.Core.UI.Converters.UIPropertyFontStyleConverter   UIPropertyFontStyleConverterG  AICSharpCode.Data.EDMDesigner.Core.UI.Converters.IsTypeOfConverter  IsTypeOfConverter   ReturnVisibility  propertiesCollectionView �� Source �� GroupDescriptions2  ,System.Windows.Data.PropertyGroupDescription   PropertyName �� SortDescriptions+   %System.ComponentModel.SortDescription   PropertyNameO	  IICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu.ContextMenu  ContextMenuL
  FICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu.MenuItem 
 NameQ  KICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType.TypeBaseDesigner	   AddPropertyText
   AddScalarPropertyText   AddScalarPropertyCommand m� Command   AddComplexPropertyText    AddComplexPropertyCommand    AddNavigationPropertyText#   AddNavigationPropertyCommand   
RenameText   RenameCommand m� InputGestureText   
DeleteText   DeleteCommand m� IconF  @ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.DesignerCanvas   RemoveFromDesignerText    RemoveFromDesignerCommandQ  KICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu.MenuSeparator   CutText   
CutCommand   CopyText   CopyCommand   	PasteText   PasteCommandE  ?ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.GreyableImage   PropertiesText    PropertiesCommand!   MappingText"   MappingCommand#   ShowBaseText$   ShowBaseTypeCommand%   ShowRelatedText&   ShowRelatedTypeCommand'   ShowOtherTabsText(   ShowOtherTabsCommand)   ShowOtherTabsItemCommand* m� CommandParameter+ ��NameM  GICSharpCode.Data.EDMDesigner.Core.UI.UserControls.DesignerCanvasPreview,  Name-   DesignerView. J� Opacity��%�	  &	        &	       &	 3     &	 F     &	 Y     &	 l     &	      &	 �     &	 W      5   
   $ Hidden=�6b     5   
   6:     5   
   6=     5   
   6>     5   
   6=     5   
   6=     5   
    . 6L   �� 5   
    6@   �� *
Properties+ 5        5      $ PropertyType��6+    5        5      $ PropertyTypeValue��6.     5      $ Index��6.   5      	  5    
   .@�5!      
  $ addMenuItem��6)   #��Z	 6>   .@�5"      
  $ addScalarPropertyMenuItem��6-   #��Z
 6P   # Z 6�   
  5#      $  addComplexPropertyMenuItem��6-   #��Z 6Q   # Z 6�   
  5$      $# addNavigationPropertyMenuItem��6-   #��Z 6T   # Z 6�   5%      
  5&      $ renameMenuItem��6)   #��Z 6A   # Z 6�   $ F2��6�   
  5'      $ deleteMenuItem��6)   #��Z 6A   # Z 6�   $	 Del��6�    5(      �� 5)      $��Resources/Delete.png��6   $��16��6:   $��16��6E   5+      
  5,      $  removeFromDesignerMenuItem��6)   #��Z 6M   # Z 6�   $ 	BackSpace��6�     5-      
  5.      $ cutMenuItem��6)   #��Z 6>   # Z 6�   $ Ctrl+X��6�    5/      �� 50      $��Resources/Cut.png��6   $��16��67   $��16��6B   52      
  53      $ copyMenuItem��6)   #��Z 6?   # Z 6�   $ Ctrl+C��6�    54      �� 55      $��Resources/Copy.png��6   $��16��68   $��16��6C   57      
  58      $ pasteMenuItem��6)   #��Z 6@   # Z 6�   $ Ctrl+V��6�    59        5:      $��Resources/Paste.png��62   5<        5=      
  5>      $ propertiesMenuItem��6)   #��Z 6E   # Z  6�   $ F4��6�   
  5?      $ mappingMenuItem��6)   #��Z! 6B   # Z" 6�   $ Ctrl+Shift+M��6�     5@      
  5A      $ showBaseMenuItem��6)   #��Z# 6C   # Z$ 6�   
  5B      $ showRelatedMenuItem��6)   #��Z% 6F   # Z& 6�     5C      
  5D      $ showOtherTabsMenuItem��6)   #��Z' 6H   # Z( 6�   ��5E      �� 5F      .R�5G      m� # Z) 6#   * 6x   �� ��5H      � 5I   "   
�������$��-30,0,-120,0q�6=   .+�5J   &   �� .+�5K   *   �� $+ otherTabTextBlock��6B   $
��10,5q�64   
�������
�������$
��Bold"�6�   ��6]   �� *Name+6�   � 5L   *   $��2q�6/   .+�5M   .     $, otherTabDesignerCanvas��6R   $	��150��6r   $	��100��6~   - 6�   �� � 5N   .   $. 0Q�63   
�������$	��150��6R   $	��100��6^   5O   +   5P   '   5Q   #   5S      5T      5V      5W      5X      / J� InputBindings/ 5Z      �� 5[   
   
0 �� Key$0 Delete��6   1 �� Command#1 Z 6"   �� 5\   
   $
0 Back��6   #1 Z 6    �� 5]   
   $0 F2��6   #1 Z 6   �� 5^   
   $0 X��6   2 �� 	Modifiers$
2 CTRLf�6   #1 Z 6.   �� 5_   
   $0 C��6   $
2 CTRLf�6   #1 Z 6.   �� 5`   
   $0 V��6   $
2 CTRLf�6   #1 Z 6.   �� 5a   
   $0 F4��6   #1 Z  6   �� 5b   
   $0 M��6   $2 
CTRL+Shiftf�6   #1 Z" 64   .��5e      � .+�5f   
   Q  KICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType.TypeBaseExpander  -   5        3  Name$3 entityTypeExpander��5f   1   Q  KICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType.TypeBaseExpander4   Click$4 EntityTypeExpander_Click��6I  5   	Collapsed$*5 $EntityTypeExpander_CollapsedOrExpand��6j  6   Expanded$*6 $EntityTypeExpander_CollapsedOrExpand��6�  $��2,2,2,2q�6M   7 9� 
IsExpanded7 . 8 � ContextMenu#8 [ 6  ��6^   �� 9 �� 	Converter#9 [ : �� Mode$: OneTime=���6�   �� #9 [ ��5g      I  CICSharpCode.Data.EDMDesigner.Core.UI.UserControls.EditableTextBlock  5h      -   5        ;  Name$#; entityHeaderEditableTextBlock��5h   2   $��0,5,0,5q�6Y   $
��Bold"�6j   <   Text< 6|   �� *Name+$: TwoWay=�.��5j      �� -   5        = ��Name$= propertiesListView��5j      $��0,0,0,10q�63   $��0,1,0,1q�6E   
��� ���
�������> � Cursor$> Arrow��5k   Z   ��6   �� ? �� Source#? [ @ �� 
GroupStyle@ 5l      (  "System.Windows.Controls.GroupStyle  5m      A   HeaderTemplateA 5n      �� 5o      .R�5p   "   � -   5        
�������.+�5q   &   �� $��2q�60   ��6;   �� *Name+5r   #   5s      5u      ��5w      �� 5x      .R�5y      �� B �� Orientation$B 
Horizontal=�6%   $��	0,-1,0,-2q�6>   .+�5z      � .+�5{   "   �� $��16��6(   $��16��63   $��-5,0,0,0q�6?   $V��Ppack://application:,,,/ICSharpCode.Data.Core.UI;component/Images/Icons/table.png��6Q   $��Uniform=�6�   �� 5|   "   $��16��6(   $��16��63   $��-5,0,0,0q�6?   $Z��Tpack://application:,,,/ICSharpCode.Data.Core.UI;component/Images/Icons/table_key.png��6Q   $��Uniform=�6�   y�6�   �� C �� Path$C IsKey�#9 [  �� 5}   "   $��16��6(   $��16��63   $��-5,0,0,0q�6?   $Y��Spack://application:,,,/ICSharpCode.Data.Core.UI;component/Images/Icons/table_go.png��6Q   $��Uniform=�6�   y�6�   �� $C This.BusinessInstance�#9 [ D �� ConverterParameterS  MICSharpCode.Data.EDMDesigner.Core.EDMObjects.CSDL.Property.NavigationProperty"D  5~        5      $��2,0,0,0q�6>   < 6O   �� *Name+$: TwoWay=�. 6r   �� #9 [ $
D 0.45����6�   �� #9 [ 5�      5�      5�      5�      � 5�   
   -   5        E �Name$E 
rectangles��5�      y�6#   �� F �� RelativeSourceF �� *FindAncestor+G �� AncestorType"G  $C 
IsSelected�#9 [  $: TwoWay=�  5�      H �� MergedDictionariesI �� Source�� 5�      H 5�      �� 5�      $2I ,..\SelectionRectangleResourceDictionary.xaml?�6-   %    5�      .+�5�      �� $	��Top=�6   $
��Left=�60   �� 5�      $	��Top=�6   $��Right=�60   �� 5�      $��Bottom=�6   $
��Left=�63   �� 5�      $��Bottom=�6   $��Right=�63   5�      5�      5�      