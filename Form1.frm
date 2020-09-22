VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00008000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "ALS"
   ClientHeight    =   6660
   ClientLeft      =   2850
   ClientTop       =   2490
   ClientWidth     =   9585
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6660
   ScaleWidth      =   9585
   Begin VB.Image Image2 
      Height          =   360
      Index           =   0
      Left            =   0
      Picture         =   "Form1.frx":030A
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   9120
      Picture         =   "Form1.frx":0614
      Top             =   6120
      Width           =   480
   End
   Begin VB.Shape Shape3 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FFFF&
      FillStyle       =   0  'Solid
      Height          =   855
      Left            =   840
      Shape           =   3  'Circle
      Top             =   240
      Width           =   855
   End
   Begin VB.Line Line2 
      X1              =   4080
      X2              =   3480
      Y1              =   1200
      Y2              =   600
   End
   Begin VB.Line Line1 
      X1              =   2760
      X2              =   3480
      Y1              =   1200
      Y2              =   600
   End
   Begin VB.Shape Shape2 
      Height          =   1215
      Left            =   2760
      Top             =   1200
      Width           =   1335
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00FFFF80&
      FillStyle       =   0  'Solid
      Height          =   2415
      Left            =   0
      Top             =   0
      Width           =   9615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim x
Dim y 'these two bits x and y are used to create a new grass icon each time , see the keydown event for more
Dim RndRock 'This is the doobrie for the random placeing of a rock in the lawn to add to the pure genius of the gameplay and add to the addiction :-)


Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

Dim oo
'first bit of this code is to see whether the user has mowed the lawn y is equal to the current image array and if it equals 1115 then the mower has mowed the lawn, if the game area
'was bigger then you would have to change this number to a higher amount
If y = 1115 Then
    oo = MsgBox("Well done you have mowed the lawn, go inside for a cup of tea" & Chr$(13) & Chr(13) & "Play Again ?", vbYesNo)
        If oo = 6 Then
            Unload Me
           
            Form2.Show
            Exit Sub
        Else
            Unload Me
            Exit Sub
        End If
        
    
End If

'next bit checks to see whether there is the random rock that was defined in the form load bit

If y = RndRock Then
      oo = MsgBox("Oh My , you hit a rock and blown up your lawnmower" & Chr$(13) & Chr(13) & "Play Again ?", vbYesNo)
        If oo = 6 Then
            Unload Me
           
            Form2.Show
            Exit Sub
        Else
            Unload Me
            Exit Sub
        End If

End If

'to recreate that classic spectrum feel i have continued to use the m key as the control for the
'game and to get the classic spectrum colour clash i have overlayed the icons :-)
Select Case KeyCode
      
    Case 109, 77
        y = y + 1
        Load Image2(y)
        
    
        Image1.Left = Image1.Left - 100
        Image2(x).Left = Image1.Left + 480
        Image2(x).Top = Image1.Top + 100
        Image2(x).Visible = True
        x = x + 1
        
    End Select
    
    If Image1.Left <= -480 Then
        Image1.Left = Width
        Image1.Top = Image1.Top - 420
    End If
    
End Sub

Private Sub Form_Load()
x = 1
y = 0


Randomize

RndRock = Int((2000 * Rnd) + 400)
'here we see the radom rock being placed, and x and y being set




End Sub


