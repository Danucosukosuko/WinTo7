VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Licencia"
   ClientHeight    =   5310
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   7830
   LinkTopic       =   "Form2"
   ScaleHeight     =   5310
   ScaleWidth      =   7830
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Cerrar"
      Height          =   495
      Left            =   6600
      TabIndex        =   1
      Top             =   4800
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   4815
      Left            =   0
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Text            =   "Copy.frx":0000
      Top             =   0
      Width           =   7815
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Me.Hide
End Sub

Private Sub Timer1_Timer()

End Sub
