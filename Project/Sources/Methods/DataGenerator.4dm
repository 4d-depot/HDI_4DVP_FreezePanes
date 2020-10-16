//%attributes = {}
C_TEXT:C284($name;$1)
C_LONGINT:C283($number;$2;$i)
C_COLLECTION:C1488($data;$0)

$name:=$1
$number:=$2

$data:=New collection:C1472($name)

For ($i;1;$number)
	$data.push((Random:C100%10000)+10000)
End for 

$0:=$data