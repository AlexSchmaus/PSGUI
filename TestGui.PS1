#
# Alex Schmaus
# 1/20/2023
#
# Script to test PSGUI
#


using module ".\PSGUI.psm1"
Add-Type -AssemblyName System.Windows.Forms



$DarkMode = $True

if ($DarkMode) {
    $TextColor = '#FFFFFF'
    $BackColor = '#333333'
    $MidColor = '#666666'
    $lightColor = '#F1F1F1'
} else {
    $TextColor = '#000000'
    $BackColor = '#FFFFFF'
    $MidColor = '#8D8D8D'
    $lightColor = '#F1F1F1'
}
$Font = 'Microsoft Sans Serif'



$Form = New-Object System.Windows.Forms.Form
$Form.ClientSize = '500,300'
$Form.Text = 'Hello world'
$Form.BackColor = $BackColor

$BtnOk = [Button]::new('Ok', 100, 30, 350, 250, $MidColor, $LightColor, $Font)
$BtnCncl = [Button]::new('Cancel', 100, 30, 50, 250, $MidColor, $LightColor, $Font)


@($BtnOk,$BtnCncl) | ForEach-Object {$Form.Controls.add($_)}
$Form.CancelButton = $BtnCncl




$Title = [Label]::new('Hello', 50, 20, 20, 50, $TextColor, $Font)
@($Title) |  ForEach-Object {$Form.Controls.add($__)}

$Form.ShowDialog()


get-module
write-host "--- remove ---"
remove-module PSGUI
get-module

