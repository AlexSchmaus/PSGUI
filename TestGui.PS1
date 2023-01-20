#
# Alex Schmaus
# 1/20/2023
#
# Script to test PSGUI
#


using module ".\PSGUI.psm1"
Add-Type -AssemblyName System.Windows.Forms

$Form = New-Object System.Windows.Forms.Form
$Form.ClientSize = '500,300'
$Form.Text = 'Hello world'
$Form.BackColor = '#ffffff'

$BtnOk = [Button]::new('Ok', 100, 20, 350, 250)
$BtnCncl = [Button]::new('Cancel', 100, 20, 50, 250)
@($BtnOk,$BtnCncl) | ForEach-Object {$Form.Controls.add($_)}

$Title = [Label]::new('Hello', 50, 20, 20, 50)

$Form.ShowDialog()

remove-module PSGUI