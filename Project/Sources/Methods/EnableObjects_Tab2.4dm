//%attributes = {}
C_BOOLEAN:C305($1;$isEnable)

$isEnable:=$1

OBJECT SET ENABLED:C1123(*;"Button";$isEnable)
OBJECT SET ENABLED:C1123(*;"Input";$isEnable)
OBJECT SET ENABLED:C1123(*;"Input1";$isEnable)
OBJECT SET ENABLED:C1123(*;"Input2";$isEnable)
OBJECT SET ENABLED:C1123(*;"Input3";$isEnable)