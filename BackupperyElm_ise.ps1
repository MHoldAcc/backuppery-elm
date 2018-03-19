#Generated Form Function
function GenerateForm {
########################################################################
# Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
# Generated On: 16.03.2018 13:48
# Generated By: Laura
########################################################################

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
#endregion

#region Generated Form Objects
$form1 = New-Object System.Windows.Forms.Form
$succesfullSaveLabel = New-Object System.Windows.Forms.Label
$saveSettingButton = New-Object System.Windows.Forms.Button
$saveSettingLabel = New-Object System.Windows.Forms.Label
$loadSettingButton = New-Object System.Windows.Forms.Button
$loadSettingLabel = New-Object System.Windows.Forms.Label
$commitButton = New-Object System.Windows.Forms.Button
$settingGroupBox = New-Object System.Windows.Forms.GroupBox
$repeatLabel = New-Object System.Windows.Forms.Label
$yearlyRadioB = New-Object System.Windows.Forms.RadioButton
$monthlyRadioB = New-Object System.Windows.Forms.RadioButton
$weeklyRadioB = New-Object System.Windows.Forms.RadioButton
$dailyRadioB = New-Object System.Windows.Forms.RadioButton
$completeBackupRadioB = New-Object System.Windows.Forms.RadioButton
$selectedTargetFolderButton = New-Object System.Windows.Forms.Label
$openTargetFolderButton = New-Object System.Windows.Forms.Button
$targetFolderLabel = New-Object System.Windows.Forms.Label
$excludeFileGroupBox = New-Object System.Windows.Forms.GroupBox
$excludeTextBox = New-Object System.Windows.Forms.TextBox
$excludeFiletypLabel = New-Object System.Windows.Forms.Label
$excludeFolderListBox = New-Object System.Windows.Forms.ListBox
$excludeDeleteFolderButton = New-Object System.Windows.Forms.Button
$excludeOpenFolderButton = New-Object System.Windows.Forms.Button
$excludeDeleteFolderLabel = New-Object System.Windows.Forms.Label
$excludeOpenFolderLabel = New-Object System.Windows.Forms.Label
$createBackupGroupBox = New-Object System.Windows.Forms.GroupBox
$includeBackupListBox = New-Object System.Windows.Forms.ListBox
$deleteFolderButton = New-Object System.Windows.Forms.Button
$addFolderButton = New-Object System.Windows.Forms.Button
$deleteFolderLabel = New-Object System.Windows.Forms.Label
$addFolderLabel = New-Object System.Windows.Forms.Label
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

#region elm Functions

Class elm_SettingsObject{
    
    [string[]] $FoldersToBackup = @();
    [string[]] $ExcludedFolders = @();
    [string] $ExcludedFileTypes = '';
    [string] $SaveToFolder = '';
    [bool] $IsIncrementalBackup = 0;
    [int] $RepeatBackupAfterDays = 0;
 
    [void] LoadFromFile([string] $FilePath) {
        #Loads object
        $loadedObject = [elm_SettingsObject]::new()
        $loadedObject = Import-Clixml -Path $FilePath
        # Sets values of current object
        $this.FoldersToBackup = $loadedObject.FoldersToBackup
        $this.ExcludedFolders = $loadedObject.ExcludedFolders
        $this.ExcludedFileTypes = $loadedObject.ExcludedFileTypes
        $this.SaveToFolder = $loadedObject.SaveToFolder
        $this.IsIncrementalBackup = $loadedObject.IsIncrementalBackup
        $this.RepeatBackupAfterDays = $loadedObject.RepeatBackupAfterDays
    }

    [void] SaveToFile([string] $FilePath) {
        #Saves current object to xml
        $this | Export-Clixml -Path $FilePath    
    }

    #[void] prepareBackup($FoldersToBackup, $SaveToFolder, $ExcludedFolders, $ExcludedFileTypes){
    #    $tempDir = "C:\tempDir\";
    #    if(!GetLocation.Equals("C:\")){
    #        cd "C:\";
    #        if((Test-Path $tempDir) -eq 0)
    #        {
    #            mkdir $tempDir;
    #        }
    #    } else {
    #        if((Test-Path $tempDir) -eq 0)
    #        {
    #            mkdir $tempDir;
    #        }
    #    }
    #    for ($i = 0; $i -lt $FoldersToBackup.Count ; $i++) {
    #        this.$FoldersToBackup = $FoldersToBackup[$i];
    #        Move-Item -Path $FoldersToBackup -Destination "C:\tempDir\" -Exclude $ExcludedFolders -Force;
    #    }
    #    this.$FoldersToBackup = $tempDir;
    #    backup $FoldersToBackup $SaveToFolder $ExcludedFolders $ExcludedFileTypes;
    #}
}

$currentSettings = [elm_SettingsObject]::new()

#endregion elm Functions




#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.





$excludeOpenFolderButton_OnClick= 
{
#TODO: Place custom script here

}

$handler_label1_Click= 
{
#TODO: Place custom script here

}

$commitButton_OnClick= 
{
#TODO: Place custom script here

}

$openTargetFolderButton_OnClick= 
{
#TODO: Place custom script here

}

$deleteFolderButton_OnClick= 
{
#TODO: Place custom script here

}

$handler_button8_Click= 
{
#TODO: Place custom script here

}

$handler_radioButton5_CheckedChanged= 
{
#TODO: Place custom script here

}

$handler_label5_Click= 
{
#TODO: Place custom script here

}

$addFolderButton_OnClick= 
{
#TODO: Place custom script here

}

$handler_label9_Click= 
{
#TODO: Place custom script here

}

$loadSettingButton_OnClick= 
{
#TODO: Place custom script here

}

$excludeDeleteFolderButton_OnClick= 
{
#TODO: Place custom script here

}

$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$form1.WindowState = $InitialFormWindowState
}

#----------------------------------------------
#region Generated Form Code
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 578
$System_Drawing_Size.Width = 563
$form1.ClientSize = $System_Drawing_Size
$form1.DataBindings.DefaultDataSourceUpdateMode = 0
$form1.FormBorderStyle = 2
$form1.MaximizeBox = $False
$form1.Name = "form1"
$form1.SizeGripStyle = 2
$form1.Text = "Backuppery Elm"

$succesfullSaveLabel.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 12
$System_Drawing_Point.Y = 548
$succesfullSaveLabel.Location = $System_Drawing_Point
$succesfullSaveLabel.Name = "succesfullSaveLabel"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 18
$System_Drawing_Size.Width = 270
$succesfullSaveLabel.Size = $System_Drawing_Size
$succesfullSaveLabel.Text = "Backup wurde erfolgreich gespeichert..."

$form1.Controls.Add($succesfullSaveLabel)


$saveSettingButton.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 476
$System_Drawing_Point.Y = 18
$saveSettingButton.Location = $System_Drawing_Point
$saveSettingButton.Name = "saveSettingButton"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$saveSettingButton.Size = $System_Drawing_Size
$saveSettingButton.TabIndex = 2
$saveSettingButton.Text = "Speichern"
$saveSettingButton.UseVisualStyleBackColor = $True
$saveSettingButton.add_Click($handler_button8_Click)

$form1.Controls.Add($saveSettingButton)

$saveSettingLabel.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 307
$System_Drawing_Point.Y = 23
$saveSettingLabel.Location = $System_Drawing_Point
$saveSettingLabel.Name = "saveSettingLabel"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 157
$saveSettingLabel.Size = $System_Drawing_Size
$saveSettingLabel.Text = "Einstellung speichern: "

$form1.Controls.Add($saveSettingLabel)


$loadSettingButton.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 207
$System_Drawing_Point.Y = 18
$loadSettingButton.Location = $System_Drawing_Point
$loadSettingButton.Name = "loadSettingButton"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$loadSettingButton.Size = $System_Drawing_Size
$loadSettingButton.TabIndex = 1
$loadSettingButton.Text = "Öffnen"
$loadSettingButton.UseVisualStyleBackColor = $True
$loadSettingButton.add_Click($loadSettingButton_OnClick)

$form1.Controls.Add($loadSettingButton)

$loadSettingLabel.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 22
$System_Drawing_Point.Y = 23
$loadSettingLabel.Location = $System_Drawing_Point
$loadSettingLabel.Name = "loadSettingLabel"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 122
$loadSettingLabel.Size = $System_Drawing_Size
$loadSettingLabel.Text = "Einstellung laden: "
$loadSettingLabel.add_Click($handler_label9_Click)

$form1.Controls.Add($loadSettingLabel)


$commitButton.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 476
$System_Drawing_Point.Y = 542
$commitButton.Location = $System_Drawing_Point
$commitButton.Name = "commitButton"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 75
$commitButton.Size = $System_Drawing_Size
$commitButton.TabIndex = 16
$commitButton.Text = "Ausführen"
$commitButton.UseVisualStyleBackColor = $True
$commitButton.add_Click($commitButton_OnClick)

$form1.Controls.Add($commitButton)


$settingGroupBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 12
$System_Drawing_Point.Y = 317
$settingGroupBox.Location = $System_Drawing_Point
$settingGroupBox.TabIndex = 10
$settingGroupBox.Name = "settingGroupBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 219
$System_Drawing_Size.Width = 539
$settingGroupBox.Size = $System_Drawing_Size
$settingGroupBox.TabStop = $False
$settingGroupBox.Text = "Einstellungen:"

$form1.Controls.Add($settingGroupBox)
$repeatLabel.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 10
$System_Drawing_Point.Y = 82
$repeatLabel.Location = $System_Drawing_Point
$repeatLabel.Name = "repeatLabel"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 19
$System_Drawing_Size.Width = 260
$repeatLabel.Size = $System_Drawing_Size
$repeatLabel.Text = "Inkremental Backup mit Wiederholungen:"

$settingGroupBox.Controls.Add($repeatLabel)


$yearlyRadioB.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 10
$System_Drawing_Point.Y = 162
$yearlyRadioB.Location = $System_Drawing_Point
$yearlyRadioB.Name = "yearlyRadioB"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 25
$System_Drawing_Size.Width = 104
$yearlyRadioB.Size = $System_Drawing_Size
$yearlyRadioB.TabIndex = 15
$yearlyRadioB.TabStop = $True
$yearlyRadioB.Text = "Jährlich"
$yearlyRadioB.UseVisualStyleBackColor = $True

$settingGroupBox.Controls.Add($yearlyRadioB)


$monthlyRadioB.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 10
$System_Drawing_Point.Y = 140
$monthlyRadioB.Location = $System_Drawing_Point
$monthlyRadioB.Name = "monthlyRadioB"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 25
$System_Drawing_Size.Width = 104
$monthlyRadioB.Size = $System_Drawing_Size
$monthlyRadioB.TabIndex = 14
$monthlyRadioB.TabStop = $True
$monthlyRadioB.Text = "Monatlich"
$monthlyRadioB.UseVisualStyleBackColor = $True

$settingGroupBox.Controls.Add($monthlyRadioB)


$weeklyRadioB.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 10
$System_Drawing_Point.Y = 119
$weeklyRadioB.Location = $System_Drawing_Point
$weeklyRadioB.Name = "weeklyRadioB"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 25
$System_Drawing_Size.Width = 104
$weeklyRadioB.Size = $System_Drawing_Size
$weeklyRadioB.TabIndex = 13
$weeklyRadioB.TabStop = $True
$weeklyRadioB.Text = "Wöchentlich"
$weeklyRadioB.UseVisualStyleBackColor = $True
$weeklyRadioB.add_CheckedChanged($handler_radioButton5_CheckedChanged)

$settingGroupBox.Controls.Add($weeklyRadioB)


$dailyRadioB.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 10
$System_Drawing_Point.Y = 98
$dailyRadioB.Location = $System_Drawing_Point
$dailyRadioB.Name = "dailyRadioB"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 25
$System_Drawing_Size.Width = 104
$dailyRadioB.Size = $System_Drawing_Size
$dailyRadioB.TabIndex = 12
$dailyRadioB.TabStop = $True
$dailyRadioB.Text = "Täglich"
$dailyRadioB.UseVisualStyleBackColor = $True

$settingGroupBox.Controls.Add($dailyRadioB)


$completeBackupRadioB.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 10
$System_Drawing_Point.Y = 54
$completeBackupRadioB.Location = $System_Drawing_Point
$completeBackupRadioB.Name = "completeBackupRadioB"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 25
$System_Drawing_Size.Width = 179
$completeBackupRadioB.Size = $System_Drawing_Size
$completeBackupRadioB.TabIndex = 11
$completeBackupRadioB.TabStop = $True
$completeBackupRadioB.Text = "Komplett Backup"
$completeBackupRadioB.UseVisualStyleBackColor = $True

$settingGroupBox.Controls.Add($completeBackupRadioB)

$selectedTargetFolderButton.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 295
$System_Drawing_Point.Y = 29
$selectedTargetFolderButton.Location = $System_Drawing_Point
$selectedTargetFolderButton.Name = "selectedTargetFolderButton"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 238
$selectedTargetFolderButton.Size = $System_Drawing_Size
$selectedTargetFolderButton.Text = "D:\\ExampleFolder\Example\Backup"
$selectedTargetFolderButton.TextAlign = 16

$settingGroupBox.Controls.Add($selectedTargetFolderButton)


$openTargetFolderButton.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 195
$System_Drawing_Point.Y = 29
$openTargetFolderButton.Location = $System_Drawing_Point
$openTargetFolderButton.Name = "openTargetFolderButton"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 75
$openTargetFolderButton.Size = $System_Drawing_Size
$openTargetFolderButton.TabIndex = 10
$openTargetFolderButton.Text = "Öffnen"
$openTargetFolderButton.UseVisualStyleBackColor = $True
$openTargetFolderButton.add_Click($openTargetFolderButton_OnClick)

$settingGroupBox.Controls.Add($openTargetFolderButton)

$targetFolderLabel.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 10
$System_Drawing_Point.Y = 27
$targetFolderLabel.Location = $System_Drawing_Point
$targetFolderLabel.Name = "targetFolderLabel"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 86
$targetFolderLabel.Size = $System_Drawing_Size
$targetFolderLabel.Text = "Zielordner: "
$targetFolderLabel.TextAlign = 16

$settingGroupBox.Controls.Add($targetFolderLabel)



$excludeFileGroupBox.DataBindings.DefaultDataSourceUpdateMode = 0
$excludeFileGroupBox.TabIndex = 6
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 12
$System_Drawing_Point.Y = 159
$excludeFileGroupBox.Location = $System_Drawing_Point
$excludeFileGroupBox.Name = "excludeFileGroupBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 152
$System_Drawing_Size.Width = 539
$excludeFileGroupBox.Size = $System_Drawing_Size
$excludeFileGroupBox.TabStop = $False
$excludeFileGroupBox.Text = "Auszuschliessende Files / Ordner / Datentypen:"

$form1.Controls.Add($excludeFileGroupBox)
$excludeTextBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 295
$System_Drawing_Point.Y = 103
$excludeTextBox.Location = $System_Drawing_Point
$excludeTextBox.Name = "excludeTextBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 238
$excludeTextBox.Size = $System_Drawing_Size
$excludeTextBox.TabIndex = 9
$excludeTextBox.Text = "temp, txt"

$excludeFileGroupBox.Controls.Add($excludeTextBox)

$excludeFiletypLabel.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 104
$excludeFiletypLabel.Location = $System_Drawing_Point
$excludeFiletypLabel.Name = "excludeFiletypLabel"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 19
$System_Drawing_Size.Width = 187
$excludeFiletypLabel.Size = $System_Drawing_Size
$excludeFiletypLabel.Text = "Auszuschliessende Datentypen: "
$excludeFiletypLabel.TextAlign = 16
$excludeFiletypLabel.add_Click($handler_label5_Click)

$excludeFileGroupBox.Controls.Add($excludeFiletypLabel)

$excludeFolderListBox.DataBindings.DefaultDataSourceUpdateMode = 0
$excludeFolderListBox.FormattingEnabled = $True
$excludeFolderListBox.Items.Add("C:\\System")|Out-Null
$excludeFolderListBox.Items.Add("D:\\ExampleFolder\ExampleFolder")|Out-Null
$excludeFolderListBox.Items.Add("D:\\workspace")|Out-Null
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 295
$System_Drawing_Point.Y = 24
$excludeFolderListBox.Location = $System_Drawing_Point
$excludeFolderListBox.Name = "excludeFolderListBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 69
$System_Drawing_Size.Width = 238
$excludeFolderListBox.Size = $System_Drawing_Size
$excludeFolderListBox.TabIndex = 8

$excludeFileGroupBox.Controls.Add($excludeFolderListBox)


$excludeDeleteFolderButton.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 195
$System_Drawing_Point.Y = 51
$excludeDeleteFolderButton.Location = $System_Drawing_Point
$excludeDeleteFolderButton.Name = "excludeDeleteFolderButton"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 75
$excludeDeleteFolderButton.Size = $System_Drawing_Size
$excludeDeleteFolderButton.TabIndex = 7
$excludeDeleteFolderButton.Text = "Entfernen"
$excludeDeleteFolderButton.UseVisualStyleBackColor = $True
$excludeDeleteFolderButton.add_Click($excludeDeleteFolderButton_OnClick)

$excludeFileGroupBox.Controls.Add($excludeDeleteFolderButton)


$excludeOpenFolderButton.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 195
$System_Drawing_Point.Y = 24
$excludeOpenFolderButton.Location = $System_Drawing_Point
$excludeOpenFolderButton.Name = "excludeOpenFolderButton"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 75
$excludeOpenFolderButton.Size = $System_Drawing_Size
$excludeOpenFolderButton.TabIndex = 6
$excludeOpenFolderButton.Text = "Öffnen"
$excludeOpenFolderButton.UseVisualStyleBackColor = $True
$excludeOpenFolderButton.add_Click($excludeOpenFolderButton_OnClick)

$excludeFileGroupBox.Controls.Add($excludeOpenFolderButton)

$excludeDeleteFolderLabel.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 51
$excludeDeleteFolderLabel.Location = $System_Drawing_Point
$excludeDeleteFolderLabel.Name = "excludeDeleteFolderLabel"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 183
$excludeDeleteFolderLabel.Size = $System_Drawing_Size
$excludeDeleteFolderLabel.Text = "Ordner oder FIle löschen"
$excludeDeleteFolderLabel.TextAlign = 16

$excludeFileGroupBox.Controls.Add($excludeDeleteFolderLabel)

$excludeOpenFolderLabel.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 24
$excludeOpenFolderLabel.Location = $System_Drawing_Point
$excludeOpenFolderLabel.Name = "excludeOpenFolderLabel"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 182
$excludeOpenFolderLabel.Size = $System_Drawing_Size
$excludeOpenFolderLabel.Text = "Ordner oder File hinzufügen"
$excludeOpenFolderLabel.TextAlign = 16

$excludeFileGroupBox.Controls.Add($excludeOpenFolderLabel)



$createBackupGroupBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 12
$System_Drawing_Point.Y = 52
$createBackupGroupBox.Location = $System_Drawing_Point
$createBackupGroupBox.Name = "createBackupGroupBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 101
$System_Drawing_Size.Width = 539
$createBackupGroupBox.Size = $System_Drawing_Size
$createBackupGroupBox.TabStop = $False
$createBackupGroupBox.Text = "Backup erstellen von:"

$form1.Controls.Add($createBackupGroupBox)
$includeBackupListBox.DataBindings.DefaultDataSourceUpdateMode = 0
$includeBackupListBox.FormattingEnabled = $True
$includeBackupListBox.Items.Add("C:\\Example")|Out-Null
$includeBackupListBox.Items.Add("C:\\ExampleFolder\ExampleFolder")|Out-Null
$includeBackupListBox.Items.Add("D:\\Tescht")|Out-Null
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 296
$System_Drawing_Point.Y = 19
$includeBackupListBox.Location = $System_Drawing_Point
$includeBackupListBox.Name = "includeBackupListBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 69
$System_Drawing_Size.Width = 237
$includeBackupListBox.Size = $System_Drawing_Size
$includeBackupListBox.TabIndex = 5

$createBackupGroupBox.Controls.Add($includeBackupListBox)


$deleteFolderButton.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 195
$System_Drawing_Point.Y = 47
$deleteFolderButton.Location = $System_Drawing_Point
$deleteFolderButton.Name = "deleteFolderButton"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 75
$deleteFolderButton.Size = $System_Drawing_Size
$deleteFolderButton.TabIndex = 4
$deleteFolderButton.Text = "Entfernen"
$deleteFolderButton.UseVisualStyleBackColor = $True
$deleteFolderButton.add_Click($deleteFolderButton_OnClick)

$createBackupGroupBox.Controls.Add($deleteFolderButton)


$addFolderButton.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 195
$System_Drawing_Point.Y = 19
$addFolderButton.Location = $System_Drawing_Point
$addFolderButton.Name = "addFolderButton"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 75
$addFolderButton.Size = $System_Drawing_Size
$addFolderButton.TabIndex = 3
$addFolderButton.Text = "Öffnen"
$addFolderButton.UseVisualStyleBackColor = $True
$addFolderButton.add_Click($addFolderButton_OnClick)

$createBackupGroupBox.Controls.Add($addFolderButton)
$createBackupGroupBox.TabIndex = 3

$deleteFolderLabel.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 47
$deleteFolderLabel.Location = $System_Drawing_Point
$deleteFolderLabel.Name = "deleteFolderLabel"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 183
$deleteFolderLabel.Size = $System_Drawing_Size
$deleteFolderLabel.Text = "Ordner löschen"
$deleteFolderLabel.TextAlign = 16

$createBackupGroupBox.Controls.Add($deleteFolderLabel)

$addFolderLabel.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$addFolderLabel.Location = $System_Drawing_Point
$addFolderLabel.Name = "addFolderLabel"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 183
$addFolderLabel.Size = $System_Drawing_Size
$addFolderLabel.Text = "Ordner hinzufügen"
$addFolderLabel.TextAlign = 16
$addFolderLabel.add_Click($handler_label1_Click)

$createBackupGroupBox.Controls.Add($addFolderLabel)


#endregion Generated Form Code

#Save the initial state of the form
$InitialFormWindowState = $form1.WindowState
#Init the OnLoad event to correct the initial state of the form
$form1.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$form1.ShowDialog()| Out-Null

} #End Function

#Call the Function
GenerateForm
