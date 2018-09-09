VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   225
   ClientTop       =   1155
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   615
      Left            =   7560
      TabIndex        =   2
      Top             =   1920
      Width           =   1815
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   615
      Left            =   5880
      TabIndex        =   1
      Top             =   1920
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400000&
      Height          =   615
      Left            =   4080
      TabIndex        =   0
      Top             =   1920
      Width           =   1455
   End
   Begin VB.Label Label3 
      Caption         =   "Second Member"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008080&
      Height          =   255
      Left            =   5760
      TabIndex        =   5
      Top             =   1560
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "First Member"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   255
      Left            =   4080
      TabIndex        =   4
      Top             =   1560
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "Result"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   255
      Left            =   8040
      TabIndex        =   3
      Top             =   1560
      Width           =   855
   End
   Begin VB.Menu bgc 
      Caption         =   "BGCOLOR"
      Begin VB.Menu red 
         Caption         =   "Red"
      End
      Begin VB.Menu green 
         Caption         =   "Green"
      End
      Begin VB.Menu blue 
         Caption         =   "Blue"
      End
   End
   Begin VB.Menu math 
      Caption         =   "CALCULATOR"
      Begin VB.Menu add 
         Caption         =   "Add"
      End
      Begin VB.Menu subt 
         Caption         =   "Subtract"
      End
      Begin VB.Menu mul 
         Caption         =   "Multiply"
      End
      Begin VB.Menu div 
         Caption         =   "Divison"
      End
   End
   Begin VB.Menu con 
      Caption         =   "CONCATENATION"
   End
   Begin VB.Menu max 
      Caption         =   "MAXIMIZE"
   End
   Begin VB.Menu min 
      Caption         =   "MINIMIZE"
   End
   Begin VB.Menu exit 
      Caption         =   "EXIT"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub add_Click()
Sum = Val(Text1.Text) + Val(Text2.Text)
Text3.Text = Sum
End Sub

Private Sub con_Click()
Text3.Text = Text1.Text + " " + Text2.Text
End Sub

Private Sub div_Click()
divv = Val(Text1.Text) / Val(Text2.Text)
Text3.Text = divv
End Sub

Private Sub form_mousedown(button As Integer, shift As Integer, x As Single, y As Single)
If button = 2 Then
PopupMenu bgc
End If
End Sub

Private Sub blue_Click()
Form1.BackColor = QBColor(1)
red.Enabled = True
green.Enabled = True
blue.Enabled = False
End Sub

Private Sub exit_Click()
End
End Sub

Private Sub green_Click()
Form1.BackColor = QBColor(2)
red.Enabled = True
green.Enabled = False
blue.Enabled = True
End Sub

Private Sub max_Click()
Form1.WindowState = 2
End Sub

Private Sub min_Click()
Form1.WindowState = 0
End Sub

Private Sub mul_Click()
mull = Val(Text1.Text) * Val(Text2.Text)
Text3.Text = mull
End Sub

Private Sub red_Click()
Form1.BackColor = QBColor(4)
red.Enabled = False
green.Enabled = True
blue.Enabled = True
End Sub


Private Sub subt_Click()
If (Val(Text1.Text) > Val(Text2.Text)) Then
diff = Val(Text1.Text) - Val(Text2.Text)
Else
diff = Val(Text2.Text) - Val(Text1.Text)
End If
Text3.Text = diff
End Sub
