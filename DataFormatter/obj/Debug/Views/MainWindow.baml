   M S B A M L   `   `   `  ����H  DDataFormatter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:DataFormatter.ViewModelsDataFormatter.ViewModels  5   	       DataFormatter.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:DataFormatter.ViewModels     5   	     � Title$  KV17 Viz Maps DataManager��5   	   $	��450��6+   $	��745��68    � DataContext 5
      ,   &DataFormatter.ViewModels.MainViewModel  5   
    � 	Resources 5         mainViewModel  BoolToVisConverter  PositionDisplay �� 
TargetType �� Property �� Value  PositionText  PositionTextBlock��%
  &	        &	      &	 &     &	 �     &	 B      5   
   6   �� 5   
   6'   �� 5   
   " ��6(   .�5      ��  � ��
 ���_�6+   �� 5       �@��Orientation$ 
Horizontal=�6,   �� 5       � ��$ 0 0 0 10q�6'   5      �� 5   
   " ��6%   .�5      ��  � ��$ 50��6)   �� 5       � ��$ Center=�62   5      �� 5   
   " ��6*   .�5      ��  � ��$ Center=�62   �� 5       � ��$
 Bold"�6+   �� 5       � ��$ 50��6&   5      5      .��5"      �  � ColumnDefinitions 5#   
   �� 5$      $��10 �6   �� 5%      $��2* �6   �� 5&      $��2* �6   �� 5'      $��10 �6    � RowDefinitions 5)   
   �� 5*      $��10 �6   �� 5+      $��3* �6   $��85��6(   �� 5,      $��4* �6   �� 5-      $��4* �6   �� 5.      $��10 �6   .+�52   
   � $��1��6   $��1��6   $��2��6,   
������� 53      �� 54      �� 55      �� 56      �� 57      �� 58      �� 59       5;      �� 5<      $��1* �6    �� 5=      $��2* �6    .+�5B      ��  �� Orientation$ Vertical=�6   $��0��60   $��2��6@   $��5 0 5 0q�5C      .+�5D      �� ID6    �� 5E      -   5        	 ��Name$	 ID��5E      ��6&   �� 
 �� Path$
 ActivePlace.PlaceId� �� Mode$ TwoWay=��� 5F      Index6#   �� 5G      -   5        $	 Index��5G      ��6)   �� $
 ActivePlace.PlaceIndex�$ OneWay=�5H      �� 5K      $ Vertical=�6   $��1��60   $��2��6@   $��5 0 5 0q�5L      .+�5M      �� NAME6"   �� 5N      -   5        $
	 Name��5N      ��6(   �� $
 ActivePlace.PlaceName�$ TwoWay=�5O      �� 5R      $��3��6   $��0��6)   $��2��66   .+�5S      �� -   5         ��Name$ cbxPositionSelector��5S      $ �� IsSynchronizedWithCurrentItem$
 TrueY�5V      ��5T      �� $
 PositionListForDisplay� �� UpdateSourceTrigger$ PropertyChanged=�$ TwoWay=� �� SelectedIndex 5U      �� *TheSelectedIndex+$ PropertyChanged=�$ TwoWay=�5V      5W      � 5[      $��1��6   $��2��6    $��4��60    5\      �� 5]       5_      �� 5`      �� 5a      .+�5e      �� $��0��6   $��0��6-   $��1��6:   #��[ 5f      y�5g      �� $
 ShowSet1� �� 	Converter# [ $ PropertyChanged=�$ TwoWay=�.+�5h      �� #��[ 6    $��1 START��6K   �� 5i      -   5        $	 	KF1startX��5i      #��[ 61   ��6W   �� $4
 .ActivePlace.PositionList[0].PositionStart.PosX�$ TwoWay=��� 5j      -   5        $	 	KF1startY��5j      #��[ 61   ��6W   �� $4
 .ActivePlace.PositionList[0].PositionStart.PosY�$ TwoWay=��� 5k      -   5        $	 	KF1startZ��5k      #��[ 61   ��6W   �� $4
 .ActivePlace.PositionList[0].PositionStart.PosZ�$ TwoWay=�5l      �� 5o      $��1��6   $��0��6-   $��1��6:   #��[ 5p      y�5q      �� $
 ShowSet1�# [ $ PropertyChanged=�$ TwoWay=�.+�5r      �� #��[ 6    $��1 END��6K   6Z   �� 5s      -   5        $	 KF1endX��5s      #��[ 6/   ��6U   �� $2
 ,ActivePlace.PositionList[0].PositionEnd.PosX�$ TwoWay=��� 5t      -	   5        $	 KF1endY��5t      #��[ 6/   ��6U   �� $2
 ,ActivePlace.PositionList[0].PositionEnd.PosY�$ TwoWay=��� 5u      -
   5        $	 KF1endZ��5u      #��[ 6/   ��6U   �� $2
 ,ActivePlace.PositionList[0].PositionEnd.PosZ�$ TwoWay=�5v      �� 5z      $��0��6   $��0��6-   $��1��6:   #��[ 5{      y�5|      �� $
 ShowSet2�# [ $ PropertyChanged=�$ TwoWay=�.+�5}      �� #��[ 6    $��2 START��6K   �� 5~      -   5        $	 	KF2startX��5~      #��[ 61   ��6W   �� $4
 .ActivePlace.PositionList[1].PositionStart.PosX�$ TwoWay=��� 5      -   5        $	 	KF2startY��5      #��[ 61   ��6W   �� $4
 .ActivePlace.PositionList[1].PositionStart.PosY�$ TwoWay=��� 5�      -   5        $	 	KF2startZ��5�      #��[ 61   ��6W   �� $4
 .ActivePlace.PositionList[1].PositionStart.PosZ�$ TwoWay=�5�      �� 5�      $��1��6   $��0��6-   $��1��5�      #��[ 5�      y�5�      �� $
 ShowSet2�# [ $ PropertyChanged=�$ TwoWay=�.+�5�      �� #��[ 6    $��2 END��6K   �� 5�      -   5        $	 KF2endX��5�      #��[ 6/   ��6U   �� $2
 ,ActivePlace.PositionList[1].PositionEnd.PosX�$ TwoWay=��� 5�      -   5        $	 KF2endY��5�      #��[ 6/   ��6U   �� $2
 ,ActivePlace.PositionList[1].PositionEnd.PosY�$ TwoWay=��� 5�      -   5        $	 KF2endZ��5�      #��[ 6/   ��6U   �� $2
 ,ActivePlace.PositionList[1].PositionEnd.PosZ�$ TwoWay=�5�      �� 5�      $��0��6   $��0��6-   $��1��5�      #��[ 5�      y�5�      �� $
 ShowSet3�# [ $ PropertyChanged=�$ TwoWay=�.+�5�      �� #��[ 6    $��3 START��6K   �� 5�      -   5        $	 	KF3startX��5�      #��[ 61   ��6W   �� $4
 .ActivePlace.PositionList[2].PositionStart.PosX�$ TwoWay=��� 5�      -   5        $	 	KF3startY��5�      #��[ 61   ��6W   �� $4
 .ActivePlace.PositionList[2].PositionStart.PosY�$ TwoWay=��� 5�      -   5        $	 	KF3startZ��5�      #��[ 61   ��6W   �� $4
 .ActivePlace.PositionList[2].PositionStart.PosZ�$ TwoWay=�5�      �� 5�      $��1��6   $��0��6-   $��1��5�      #��[ 5�      y�5�      �� $
 ShowSet3�# [ $ PropertyChanged=�$ TwoWay=�.+�5�      �� #��[ 6    $��3 END��6K   �� 5�      -   5        $	 KF3endX��5�      #��[ 6/   ��6U   �� $2
 ,ActivePlace.PositionList[2].PositionEnd.PosX�$ TwoWay=��� 5�      -   5        $	 KF3endY��5�      #��[ 6/   ��6U   �� $2
 ,ActivePlace.PositionList[2].PositionEnd.PosY�$ TwoWay=��� 5�      -   5        $	 KF3endZ��5�      #��[ 6/   ��6U   �� $2
 ,ActivePlace.PositionList[2].PositionEnd.PosZ�$ TwoWay=�5�      �� 5�      $��0��6   $��0��6-   $��1��5�      #��[ 5�      y�5�      �� $
 ShowSet4�# [ $ PropertyChanged=�$ TwoWay=�.+�5�      �� #��[ 6    $��4 START��6K   �� 5�      -   5        $	 	KF4startX��5�      #��[ 61   ��6W   �� $4
 .ActivePlace.PositionList[3].PositionStart.PosX�$ TwoWay=��� 5�      -   5        $	 	KF4startY��5�      #��[ 61   ��6W   �� $4
 .ActivePlace.PositionList[3].PositionStart.PosY�$ TwoWay=��� 5�      -   5        $	 	KF4startZ��5�      #��[ 61   ��6W   �� $4
 .ActivePlace.PositionList[3].PositionStart.PosZ�$ TwoWay=�5�      �� 5�      $��1��6   $��0��6-   $��1��5�      #��[ 5�      y�5�      �� $
 ShowSet4�# [ $ PropertyChanged=�$ TwoWay=�.+�5�      �� #��[ 6    $��4 END��6K   �� 5�      -   5        $	 KF4endX��5�      #��[ 6/   ��6U   �� $2
 ,ActivePlace.PositionList[3].PositionEnd.PosX�$ TwoWay=��� 5�      -   5        $	 KF4endY��5�      #��[ 6/   ��6U   �� $2
 ,ActivePlace.PositionList[3].PositionEnd.PosY�$ TwoWay=��� 5�      -   5        $	 KF4endZ��5�      #��[ 6/   ��6U   �� $2
 ,ActivePlace.PositionList[3].PositionEnd.PosZ�$ TwoWay=�5�      5�      5�      �� 5�   
   $��2��6   $��2��6"   $ 
Horizontal=�5�      $��40��5�      $	��Top=�5�      $��0 5 0 0q�5�      .+�5�      �� -   5         ��Name$ 	btnUpdate��5�      $��5 0 5 5q�6(   $��5q�69   $
��SAVE��6_   �� 5�      -   5        $ btnNew��5�      $��5 0 5 5q�6%   $��5q�66   $	��NEW��6B   6P   �� 5�      -   5        $ 	btnDelete��5�      $��5 0 5 5q�6(   $��5q�69   $��DELETE��6E   $y�Hidden=�6V   5�      �� 5�   
   $��2��6   $��2��6"   $ 
Horizontal=�5�      $��40��5�      $��Right=�5�      $	��Top=�5�      $��0 5 0 0q�5�      .+�5�      �� -    5        $ btnPrev��5�      $��5 0 5 5q�6&   $��5q�67   $
��prev��6C   $y�Hidden=�6R   �� 5�      -!   5        $ btnNext��5�      $��5 0 5 5q�6&   $��5q�67   $
��next��6C   $y�Hidden=�6R   5�      �� 5�   
   $��2��6   $��3��6%   $��Bottom=�62   .+�5�   
   �� $ 
Horizontal=�6   .+�5�      �� -"   5        $ btnImportData��5�      $��5 5 5 0q�5�      $��5q�5�      $��Import Data��5�      5�      �� 5�      -#   5        $ btnAddPositionSet��5�      $��5 5 5 0q�5�      $��5q�5�      $��Add Position Set��5�      5�      5�      5�      �� 5�   
   -$   5         ��Name$ ListOfPlaces��5�      $��2��5�      $��1��6   $��2��5�      $��1��6#    �� DisplayMemberPath$ DisplayEntry��5�      $
 TrueY�5�      ��5�      �� $
 ListOfPlaces�$ PropertyChanged=� �� SelectedItem 5�      �� *ActivePlace+$ TwoWay=�5�      5�      5�      