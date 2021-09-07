param ([object]$in_File, [object]$out_File)

[object]$in_byteArray = [IO.File]::ReadAllBytes(($in_File))

[long]$arrayLength = ((4.0d / 3.0d) * $in_byteArray.Length)
if ($arrayLength % 4 -ne 0) {
    $arrayLength += (4 - $arrayLength % 4)
}
$out_byteArray = New-Object char[] $arrayLength

[Convert]::ToBase64CharArray($in_byteArray, '0', $in_byteArray.Length, $out_byteArray, '0')
[IO.File]::WriteAllBytes($out_File, $out_byteArray)