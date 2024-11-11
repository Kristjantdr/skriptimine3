# define data arrays
$array1 = @(1, 2, 3)
$array2 = @(4, 5, 6)

#define empty result array
$array3 = New-Objekt -Typename system.collections.arraylist ##

8# add new values to empty array
$array3.add($array1[0] + $array2[0]) | out-null
$array3.add($array1[1] + $array2[1]) | out-null
$array3.add($array1[2] + $array2[2]) | out-null

#output result array
$array3