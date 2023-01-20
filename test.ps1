Add-Type -AssemblyName System.Windows.Forms

class Button : Button {
    Button ([string]$Name){
        $this.text = $Name
    }
}

$Btn = [Button]::new('Hello')

write-host "Hello World"