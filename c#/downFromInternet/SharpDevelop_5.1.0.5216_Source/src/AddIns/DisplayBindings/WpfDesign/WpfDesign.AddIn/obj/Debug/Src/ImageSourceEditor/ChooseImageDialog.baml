   M S B A M L   `   `   `  ����  ICSharpCode.WpfDesign.AddInE    ?ICSharpCode.WpfDesign.AddIn.ImageSourceEditor.ChooseImageDialog   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35` \ICSharpCode.WpfDesign.Designer, Version=5.1.6251.41833, Culture=neutral, PublicKeyToken=nullF 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     6L   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     6�   #��Z�5        J� SnapsToDevicePixels  .  � WindowStartupLocation$ CenterScreen=�5       � 
ResizeMode$ CanResizeWithGrip=�5       � Title$ Choose Image��5      $	��438��5	      $	��488��5
       � 	Resources 5       �� 
TargetType �� Property �� Value �� Orientation 
  groups	 �� Source
 �� GroupDescriptions2  ,System.Windows.Data.PropertyGroupDescription   PropertyName��%-  '��       &	  �     �� 5      " ��5      .�5      ��  � �� 5      �� 5      .R�5      �� $ 
Horizontal=�5      $	��Top=�5      $��Center=�5      5      5      5      �� 5      	 5      �� 
 5        5      $ Header��5      5!      5"      .��5#      � .+�5$      �� $
��Left=�5%      $	��Top=�5&      $��	12,12,0,0q�5'      $��Existing images��5(      $��24��5)      �� 5*      -   5        $��
imgDisplay��5,      $��12,37,12,120q�5-      ��5.      �� 5/      .R�50      � 51      ��53      �� 54      .R�55      �� $��
10,10,10,6q�56      .+�57      �� $��1q�58      ���	#FF717171
������� J� Effect 5;   	   3  -System.Windows.Media.Effects.DropShadowEffect  5<   
      Color$ 	#FFA1A1A1��5=   
   ._�5?   	   �� $	��100��5A   	   $	��100��5B   	   $��2,5,2,5q�5C   	   ��5@   	   �� *
FullName+5C   	   5D   	   �� 5E       �� TextAlignment$ Center=�5G      $��CharacterEllipsis=�5H      $	��100��5I      $��0,0,0,4q�5J      ��5F      �� *Name+ �� Mode$ OneWay=�5J      5K      5L      5N      �� 5O      -   5        $��23��5P      $��75��5Q      $��	0,0,12,88q�5R      $��Bottom=�5S      $��Right=�5T      $	��Add��5U      5V      �� 5W      $
��URL:��5X      $��Bottom=�5Y      $
��Left=�5Z      $��	12,0,0,53q�5[      $��24��5\      �� 5]      -   5        $��txURL��5d      $��Stretch=�5^      $��Bottom=�5_      $��
50,0,12,56q�5`      $��24��5a       �� 
IsReadOnly . ��5c      ��  �� Path$ SelectedItem.FullName� �� ElementName$ 
imgDisplay��$ OneWay=�5d      �� 5e      -   5         ��Name$
 uxOk��5f      $��OK��5g      $��23��5h      $��	0,0,93,12q�5i      $��Bottom=�5j      $��Right=�5k      $��75��5l       �� 	IsDefault . 5n      �� 5o      -   5        $��uxCancel��5q      $��Cancel��5p      $��23��5s      $��Right=�5t      $��	0,0,12,12q�5u      $��Bottom=�5v      $��75��5w       �� IsCancel . 5x      5y      5z      