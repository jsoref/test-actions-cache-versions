#!/bin/sh

function usage() {
    Write-Error "$0 -d <prime-numbers | numbers>"
    Exit 1
}

if ($args.count -lt 2) {
    usage
}
if ($args[0] -ne "-d") {
    usage
}
$kind = $args[1]
if ($kind -eq "prime-numbers") {
    2,3,5,7,11,13,17,19,23,29 | % { Write-Output "$_" } > ./$kind
}
elseif ($kind -eq "numbers") {
    1..10 | % { Write-Output "$_" } > ./$kind
}
else {
    usage
}
