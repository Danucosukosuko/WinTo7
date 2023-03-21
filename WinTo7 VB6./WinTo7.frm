VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000016&
   BorderStyle     =   1  'Fixed Single
   Caption         =   " WinTo7 - Versión de GitHub"
   ClientHeight    =   8460
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   4485
   Icon            =   "WinTo7.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8460
   ScaleWidth      =   4485
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "GNU License"
      Height          =   495
      Left            =   0
      TabIndex        =   1
      Top             =   7920
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Inciar transformación"
      Height          =   495
      Left            =   2760
      TabIndex        =   2
      Top             =   7920
      Width           =   1695
   End
   Begin VB.Label Label2 
      BackColor       =   &H0000FFFF&
      Caption         =   "               EJECÚTALO COMO ADMINISTRADOR"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   6480
      Width           =   4215
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000016&
      Caption         =   $"WinTo7.frx":3336E
      Height          =   2655
      Left            =   120
      TabIndex        =   0
      Top             =   3600
      Width           =   4215
   End
   Begin VB.Image Image1 
      Height          =   3375
      Left            =   0
      Picture         =   "WinTo7.frx":33675
      Top             =   0
      Width           =   4500
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form2.Show
End Sub

Private Sub Command2_Click()
Form3.Show
Me.Hide
Shell ("WinTo7v3.0.exe")
End Sub
