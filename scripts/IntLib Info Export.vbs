' https://www.altium.com/documentation/altium-designer/intlib-api-manager-interfaces

Dim IntLibMan

Sub fMainFormShow(Sender)
    ' Initial
    IntLibMan = IntegratedLibraryManager()
    If IntLibMan Is Nothing Then Exit Sub
    ' List Librarys
    For I = 0 To IntLibMan.AvailableLibraryCount - 1
        cbIntLibs.Items.Add(IntLibMan.AvailableLibraryPath(i))
    Next
    ' Select First Item
    If cbIntLibs.Items.Count > 0 Then cbIntLibs.ItemIndex = 0
End Sub

Sub bRunClick(Sender)
    Dim AvailableIntLibPath
    Dim AvailableIntLibCount
    AvailableIntLibPath = cbIntLibs.Text
    AvailableIntLibCount = IntLibMan.GetComponentCount(AvailableIntLibPath)
    mLogs.Lines.Add("Path:" & cbIntLibs.Text)
    mLogs.Lines.Add("Components Count:" & IntToStr(AvailableIntLibCount))
    mLogs.Lines.Add("IntLib Component Name:")
    For I = 0 To AvailableIntLibCount - 1
        mLogs.Lines.Add(IntLibMan.GetComponentName(AvailableIntLibPath, I))
    Next
End Sub

