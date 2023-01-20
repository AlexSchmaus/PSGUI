#
# Alex Schmaus
# 1/20/2023
#
# Creating a GUI Library for Powershell - a wrapper around WinForms
#

Add-Type -AssemblyName System.Windows.Forms

$Form = New-Object System.Windows.Forms.Form
$Form.ClientSize = '500,300'
$Form.Text = 'Hello world'
$Form.BackColor = '#ffffff'

class Button : System.Windows.Forms.Button {
    Button ([string]$Text, [int]$Width, [int]$Height, [int]$LocationX, [int]$LocationY) {
        $this.text = $Text
        $this.width = $Width
        $this.height = $Height
        $this.location = [System.Drawing.Point]::new($LocationX, $LocationY)
    }
}

class Label : System.Windows.Forms.Label {

}

class CheckBox : System.Windows.Forms.CheckBox{

}





$BtnOk = [Button]::new('Ok', 100, 20, 350, 250)
$BtnCncl = [Button]::new('Cancel', 100, 20, 50, 250)
@($BtnOk,$BtnCncl) | ForEach-Object {$Form.Controls.add($_)}



$Form.ShowDialog()