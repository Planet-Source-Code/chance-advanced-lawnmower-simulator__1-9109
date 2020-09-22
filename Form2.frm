VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Advanced Lawnmower Simulator"
   ClientHeight    =   3480
   ClientLeft      =   5355
   ClientTop       =   4005
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   ScaleHeight     =   3480
   ScaleWidth      =   4680
   Begin VB.Frame Frame1 
      Caption         =   "Ust the mouse to select your Mower From below"
      Height          =   2295
      Left            =   480
      TabIndex        =   0
      Top             =   360
      Width           =   3735
      Begin VB.Label Label5 
         Caption         =   "5.Indy Flymo SuperTec F1"
         Height          =   255
         Left            =   480
         TabIndex        =   5
         Top             =   1560
         Width           =   1935
      End
      Begin VB.Label Label4 
         Caption         =   "4.SpeedCutter 5000bvp"
         Height          =   375
         Left            =   480
         TabIndex        =   4
         Top             =   1320
         Width           =   2415
      End
      Begin VB.Label Label3 
         Caption         =   "3.HoverMow 3000"
         Height          =   255
         Left            =   480
         TabIndex        =   3
         Top             =   1080
         Width           =   2055
      End
      Begin VB.Label Label2 
         Caption         =   "2.GrandGrass Cutter 400Hp"
         Height          =   375
         Left            =   480
         TabIndex        =   2
         Top             =   840
         Width           =   2655
      End
      Begin VB.Label Label1 
         Caption         =   "1.Supertec Flymo 20000"
         Height          =   375
         Left            =   480
         TabIndex        =   1
         Top             =   600
         Width           =   2295
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit


'Ok I know the labels bit with the Captions and CHr(13) is really badly done but after conquering the mammoth task of creating spectrum like graphics and
'Immense Gameplay and Genius i think i should be let off this
'

Private Sub Form_Load()

End Sub





Private Sub Label1_Click()
    MsgBox Label1.Caption & Chr$(13) & Chr$(13) & "Is currently Broken" & Chr$(13) & Chr$(13) & "Please Select Another Mower"
End Sub


Private Sub Label2_Click()
   MsgBox Label2.Caption & " " & Chr$(13) & Chr$(13) & "Is currently away at the repair shop" & Chr$(13) & Chr(13) & "Please Select Another Mower"
End Sub


Private Sub Label3_Click()
   MsgBox Label3.Caption & " " & Chr$(13) & Chr$(13) & "Is out of Petrol" & Chr$(13) & Chr$(13) & "Please Select Another Mower"
End Sub


Private Sub Label4_Click()
    MsgBox "Press ok to Start and M to mow the lawn "
    Unload Me
    Form1.Show
End Sub


Private Sub Label5_Click()
   MsgBox Label5.Caption & Chr$(13) & Chr$(13) & " " & "Has missing parts" & Chr$(13) & Chr$(13) & "Please Select Another Mower"
End Sub

