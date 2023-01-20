#
# Alex Schmaus
# 1/20/2023
#
# Creating a GUI Library for Powershell - a wrapper around WinForms
#

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing


class Button : System.Windows.Forms.Button {
    Button (
        [string]$Text, 
        [int]$Width, 
        [int]$Height, 
        [int]$LocationX, 
        [int]$LocationY, 
        [string]$Color,
        [string]$HighlightColor,
        [string]$Font) 
    {
        $this.text = $Text
        $this.width = $Width
        $this.height = $Height
        $this.location = [System.Drawing.Point]::new($LocationX, $LocationY)
        $this.BackColor = $Color
        $this.ForeColor = $HighlightColor
        $this.Font = $Font
    }
}

class Label : System.Windows.Forms.Label {
    Label (
        [string]$Text,
        [int]$Width,
        [int]$Height,
        [int]$LocationX,
        [int]$LocationY, 
        [string]$Color,
        [string]$Font)
    {
        $this.text = $Text
        $this.width = $Width
        $this.height = $Height
        $this.Font = $Font
        $this.BackColor = $Color
        $this.Autosize = $True
        $this.location = [System.Drawing.Point]::new($LocationX, $LocationY)
    }
}

class CheckBox : System.Windows.Forms.CheckBox {
    CheckBox (){}
}




