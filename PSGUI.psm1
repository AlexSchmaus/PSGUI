#
# Alex Schmaus
# 1/20/2023
#
# Creating a GUI Library for Powershell - a wrapper around WinForms
#

Add-Type -AssemblyName System.Windows.Forms



Class Button : System.Windows.Forms.Button {
    Button ([string]$Text, [int]$Width, [int]$Height, [int]$LocationX, [int]$LocationY) {
        $this.text = $Text
        $this.width = $Width
        $this.height = $Height
        $this.location = [System.Drawing.Point]::new($LocationX, $LocationY)
    }
}

Class Label : System.Windows.Forms.Label {
    Label ([string]$Text, [int]$Width, [int]$Height, [int]$LocationX, [int]$LocationY) {
        $this.text = $Text
        $this.width = $Width
        $this.height = $Height
        $this.Autosize = $True
        $this.location = [System.Drawing.Point]::new($LocationX, $LocationY)
    }
}

Class CheckBox : System.Windows.Forms.CheckBox {

}




