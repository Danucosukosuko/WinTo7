VERSION 5.00
Begin VB.Form Form3 
   BorderStyle     =   0  'None
   Caption         =   "Form3"
   ClientHeight    =   6285
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   8220
   LinkTopic       =   "Form3"
   ScaleHeight     =   6285
   ScaleWidth      =   8220
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   840
      Top             =   1680
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FF8080&
      Caption         =   "Transformando..."
      BeginProperty Font 
         Name            =   "Segoe UI Semibold"
         Size            =   18
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000014&
      Height          =   495
      Left            =   2520
      TabIndex        =   0
      Top             =   2160
      Width           =   2895
   End
   Begin VB.Image Image1 
      Height          =   6255
      Left            =   0
      Picture         =   "TransformUI.frx":0000
      Stretch         =   -1  'True
      Top             =   0
      Width           =   8220
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()
Image1.Width = Me.Width
Image1.Height = Me.Height
Timer1.Enabled = False
End Sub
