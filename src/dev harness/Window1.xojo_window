#tag DesktopWindow
Begin DesktopWindow Window1
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   400
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   112091135
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "XojoKit Test"
   Type            =   0
   Visible         =   True
   Width           =   600
   Begin DesktopButton ButtonChooseProject
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Choose Project..."
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   138
   End
End
#tag EndDesktopWindow

#tag WindowCode
#tag EndWindowCode

#tag Events ButtonChooseProject
	#tag Event
		Sub Pressed()
		  Var f As FolderItem = FolderItem.ShowOpenFileDialog(FileTypeXojoFiles.All)
		  
		  If f = Nil Then Return
		  
		  Var project As New XKProject(f)
		  
		  // Set options.
		  project.Options.ExcludedPaths.Add("XUI>Utilities")
		  project.Options.ExcludePrivate = False
		  'project.Options.IncludeEvents = True
		  
		  // Parse the project file.
		  project.Parse
		  
		  Break
		End Sub
	#tag EndEvent
#tag EndEvents
