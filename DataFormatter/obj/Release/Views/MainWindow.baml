   M S B A M L   `   `   `  ���� H  DDataFormatter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:DataFormatter.ViewModelsDataFormatter.ViewModels      DataFormatter.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     8local&clr-namespace:DataFormatter.ViewModels       � Title$  KV17 Viz Maps DataManager��$	��450��$	��745�� � DataContext ,   &DataFormatter.ViewModels.MainViewModel   � 	Resources    mainViewModel  BoolToVisConverter  PositionDisplay �� 
TargetType �� Property �� Value  PositionText  PositionTextBlock��%9  &	        &	      &	 
     &	 u     &	 �       �� �� " ��.���  � ��
 ���_���  �@��Orientation$ 
Horizontal=���  � ��$ 0 0 0 10q��� " ��.���  � ��$ 50����  � ��$ Center=��� " ��.���  � ��$ Center=���  � ��$
 Bold"���  � ��$ 50��.���  � ColumnDefinitions �� $��10 ��� $��2* ��� $��2* ��� $��10 � � RowDefinitions �� $��10 ��� $��3* �$��85���� $��4* ��� $��4* ��� $��10 �.+�� $��1��$��1��$��2��
������� �� �� �� �� �� ��  �� $��1* ��� $��2* �.+���  �� Orientation$ Vertical=�$��0��$��2��$��5 0 5 0q�.+��� ID�� -   	 ��Name$	 ID������ 
 �� Path$
 ActivePlace.PlaceId� �� Mode$ TwoWay=��� Index�� -   $	 Index������ $
 ActivePlace.PlaceIndex�$ OneWay=��� $ Vertical=�$��1��$��2��$��5 0 5 0q�.+��� NAME�� -   $
	 Name������ $
 ActivePlace.PlaceName�$ TwoWay=��� $��3��$��0��$��2��.+��� -    ��Name$ cbxPositionSelector��$ �� IsSynchronizedWithCurrentItem$
 TrueY����� $
 PositionListForDisplay� �� UpdateSourceTrigger$ PropertyChanged=�$ TwoWay=� �� SelectedIndex �� *TheSelectedIndex+$ PropertyChanged=�$ TwoWay=�� $��1��$��2��$��4�� ��  �� �� .+��� $��0��$��0��$��1��#��[ y��� $
 ShowSet1� �� 	Converter# [ $ PropertyChanged=�$ TwoWay=�.+��� #��[ $��1 START���� -   $	 	KF1startX��#��[ ���� $4
 .ActivePlace.PositionList[0].PositionStart.PosX�$ TwoWay=��� -   $	 	KF1startY��#��[ ���� $4
 .ActivePlace.PositionList[0].PositionStart.PosY�$ TwoWay=��� -   $	 	KF1startZ��#��[ ���� $4
 .ActivePlace.PositionList[0].PositionStart.PosZ�$ TwoWay=��� $��1��$��0��$��1��#��[ y��� $
 ShowSet1�# [ $ PropertyChanged=�$ TwoWay=�.+��� #��[ $��1 END���� -   $	 KF1endX��#��[ ���� $2
 ,ActivePlace.PositionList[0].PositionEnd.PosX�$ TwoWay=��� -	   $	 KF1endY��#��[ ���� $2
 ,ActivePlace.PositionList[0].PositionEnd.PosY�$ TwoWay=��� -
   $	 KF1endZ��#��[ ���� $2
 ,ActivePlace.PositionList[0].PositionEnd.PosZ�$ TwoWay=��� $��0��$��0��$��1��#��[ y��� $
 ShowSet2�# [ $ PropertyChanged=�$ TwoWay=�.+��� #��[ $��2 START���� -   $	 	KF2startX��#��[ ���� $4
 .ActivePlace.PositionList[1].PositionStart.PosX�$ TwoWay=��� -   $	 	KF2startY��#��[ ���� $4
 .ActivePlace.PositionList[1].PositionStart.PosY�$ TwoWay=��� -   $	 	KF2startZ��#��[ ���� $4
 .ActivePlace.PositionList[1].PositionStart.PosZ�$ TwoWay=��� $��1��$��0��$��1��#��[ y��� $
 ShowSet2�# [ $ PropertyChanged=�$ TwoWay=�.+��� #��[ $��2 END���� -   $	 KF2endX��#��[ ���� $2
 ,ActivePlace.PositionList[1].PositionEnd.PosX�$ TwoWay=��� -   $	 KF2endY��#��[ ���� $2
 ,ActivePlace.PositionList[1].PositionEnd.PosY�$ TwoWay=��� -   $	 KF2endZ��#��[ ���� $2
 ,ActivePlace.PositionList[1].PositionEnd.PosZ�$ TwoWay=��� $��0��$��0��$��1��#��[ y��� $
 ShowSet3�# [ $ PropertyChanged=�$ TwoWay=�.+��� #��[ $��3 START���� -   $	 	KF3startX��#��[ ���� $4
 .ActivePlace.PositionList[2].PositionStart.PosX�$ TwoWay=��� -   $	 	KF3startY��#��[ ���� $4
 .ActivePlace.PositionList[2].PositionStart.PosY�$ TwoWay=��� -   $	 	KF3startZ��#��[ ���� $4
 .ActivePlace.PositionList[2].PositionStart.PosZ�$ TwoWay=��� $��1��$��0��$��1��#��[ y��� $
 ShowSet3�# [ $ PropertyChanged=�$ TwoWay=�.+��� #��[ $��3 END���� -   $	 KF3endX��#��[ ���� $2
 ,ActivePlace.PositionList[2].PositionEnd.PosX�$ TwoWay=��� -   $	 KF3endY��#��[ ���� $2
 ,ActivePlace.PositionList[2].PositionEnd.PosY�$ TwoWay=��� -   $	 KF3endZ��#��[ ���� $2
 ,ActivePlace.PositionList[2].PositionEnd.PosZ�$ TwoWay=��� $��0��$��0��$��1��#��[ y��� $
 ShowSet4�# [ $ PropertyChanged=�$ TwoWay=�.+��� #��[ $��4 START���� -   $	 	KF4startX��#��[ ���� $4
 .ActivePlace.PositionList[3].PositionStart.PosX�$ TwoWay=��� -   $	 	KF4startY��#��[ ���� $4
 .ActivePlace.PositionList[3].PositionStart.PosY�$ TwoWay=��� -   $	 	KF4startZ��#��[ ���� $4
 .ActivePlace.PositionList[3].PositionStart.PosZ�$ TwoWay=��� $��1��$��0��$��1��#��[ y��� $
 ShowSet4�# [ $ PropertyChanged=�$ TwoWay=�.+��� #��[ $��4 END���� -   $	 KF4endX��#��[ ���� $2
 ,ActivePlace.PositionList[3].PositionEnd.PosX�$ TwoWay=��� -   $	 KF4endY��#��[ ���� $2
 ,ActivePlace.PositionList[3].PositionEnd.PosY�$ TwoWay=��� -   $	 KF4endZ��#��[ ���� $2
 ,ActivePlace.PositionList[3].PositionEnd.PosZ�$ TwoWay=��� $��2��$��2��$ 
Horizontal=�$��40��$	��Top=�$��0 5 0 0q�.+��� -    ��Name$ 	btnUpdate��$��5 0 5 5q�$��5q�$
��SAVE���� -   $ btnNew��$��5 0 5 5q�$��5q�$	��NEW���� -   $ 	btnDelete��$��5 0 5 5q�$��5q�$��DELETE��$y�Hidden=��� $��2��$��2��$ 
Horizontal=�$��40��$��Right=�$	��Top=�$��0 5 0 0q�.+��� -    $ btnPrev��$��5 0 5 5q�$��5q�$
��prev��$y�Hidden=��� -!   $ btnNext��$��5 0 5 5q�$��5q�$
��next��$y�Hidden=��� $��2��$��3��$��Bottom=�.+��� $ 
Horizontal=�.+��� -"   $ btnImportData��$��5 5 5 0q�$��5q�$��Import Data���� -#   $ btnAddPositionSet��$��5 5 5 0q�$��5q�$��Add Position Set���� -$    ��Name$ ListOfPlaces��$��2��$��1��$��2��$��1�� �� DisplayMemberPath$ DisplayEntry��$
 TrueY����� $
 ListOfPlaces�$ PropertyChanged=� �� SelectedItem �� *ActivePlace+$ TwoWay=�