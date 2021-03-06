{**********************************************************************}
{                                                                      }
{       Settings window unit                                           }
{         for ARSSE                                                    }
{                                                                      }
{       Copyright (c) 2005-2008 Hars�nyi L�szl� (a.k.a. KeFear)        }
{       Copyright (c) 2007-2010 Gregor A. Cieslak (a.k.a. Shoozza)     }
{       All rights reserved                                            }
{                                                                      }
{       NOT free to distribute or modify                               }
{                                                                      }
{**********************************************************************}

unit SettingsForm;

interface

uses
  // System libs
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Menus, ExtCtrls, ShellApi,
  
  // network libs
  IdHTTP;

type
  TSettings1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    EventList: TListView;
    EventDesc: TMemo;
    EventPopup: TPopupMenu;
    LoadScript1: TMenuItem;
    EditScript1: TMenuItem;
    OpenDialog: TOpenDialog;
    ScriptFileEdit: TEdit;
    TabSheet3: TTabSheet;
    ScriptFile: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    ScriptEditor: TRichEdit;
    CommandList: TComboBox;
    Label5: TLabel;
    LoadScript: TButton;
    InsertCmd: TButton;
    SaveScript: TButton;
    NewScript: TButton;
    ScriptHelp: TButton;
    SaveDialog: TSaveDialog;
    ClearScript1: TMenuItem;
    TabSheet4: TTabSheet;
    Label11: TLabel;
    IRCServer: TEdit;
    Label12: TLabel;
    IRCPort: TEdit;
    Label13: TLabel;
    IRCNick: TEdit;
    Label14: TLabel;
    IRCChannel: TEdit;
    Label15: TLabel;
    IRCKey: TEdit;
    QNetPass: TEdit;
    Label17: TLabel;
    QNetUser: TEdit;
    Label16: TLabel;
    QNetAuth: TCheckBox;
    Label6: TLabel;
    IRCAltNick: TEdit;
    Label7: TLabel;
    QNetBot: TEdit;
    Label19: TLabel;
    prefix: TEdit;
    QNetCmd: TEdit;
    Label8: TLabel;
    TabSheet5: TTabSheet;
    AboutBox: TRichEdit;
    Label9: TLabel;
    GlobalSettings: TGroupBox;
    Auto: TCheckBox;
    mintotray: TCheckBox;
    sortrefresh: TCheckBox;
    refresh: TEdit;
    Label1: TLabel;
    LocalSettings: TGroupBox;
    savepass: TCheckBox;
    savelog: TCheckBox;
    hideRegistered: TCheckBox;
    hideKills: TCheckBox;
    autoswap: TCheckBox;
    autobalance: TCheckBox;
    balancediff: TEdit;
    Label3: TLabel;
    AutoMsgTime: TEdit;
    autosay: TCheckBox;
    AutoMsgList: TMemo;
    TabSheet6: TTabSheet;
    TimerList: TListView;
    AddTimer: TButton;
    EditTimer: TButton;
    DeleteTimer: TButton;
    TimerEdit: TEdit;
    TimerPopup: TPopupMenu;
    NewTimer1: TMenuItem;
    DeleteTimer1: TMenuItem;
    EditScript2: TMenuItem;
    LoadScriptfromfile1: TMenuItem;
    ManualUpdate: TButton;
    autoupdate: TCheckBox;
    updatefreq: TComboBox;
    PlayersOnTab: TCheckBox;
    Colors: TTabSheet;
    ItemColors: TGroupBox;
    mainConsole: TColorBox;
    Label10: TLabel;
    Label18: TLabel;
    normalText: TColorBox;
    Chat: TColorBox;
    teamChat: TColorBox;
    Say: TColorBox;
    mutedChat: TColorBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    PM: TColorBox;
    AdminChat: TColorBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    AdminName: TEdit;
    CustomColorList: TListView;
    AddCustomColor: TButton;
    DeleteCustomColor: TButton;
    ColorPopup: TPopupMenu;
    NewColorLine1: TMenuItem;
    DeleteLine1: TMenuItem;
    EditText1: TMenuItem;
    ModifyColod1: TMenuItem;
    ColorPicker: TColorBox;
    LineEdit: TEdit;
    DefaultColors: TButton;
    TabSheet7: TTabSheet;
    HotkeyList: TListView;
    Label27: TLabel;
    FontDialog1: TFontDialog;
    FontButton: TButton;
    Label28: TLabel;
    OpenLogs: TButton;
    SoundfileName: TEdit;
    Label29: TLabel;
    ButtonOpenSound: TButton;
    clientlist: TColorBox;
    Label30: TLabel;
    HotKeyShortcutEdit: TEdit;
    IRCUsername: TEdit;
    Label32: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EventListSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure EventListMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LoadScript1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EventListDblClick(Sender: TObject);
    procedure ScriptFileEditKeyPress(Sender: TObject; var Key: Char);
    procedure ScriptFileEditExit(Sender: TObject);
    procedure LoadScriptClick(Sender: TObject);
    procedure SaveScriptClick(Sender: TObject);
    procedure NewScriptClick(Sender: TObject);
    procedure EditScript1Click(Sender: TObject);
    procedure ClearScript1Click(Sender: TObject);
    procedure InsertCmdClick(Sender: TObject);
    procedure ScriptHelpClick(Sender: TObject);
    procedure AboutBoxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AddTimerClick(Sender: TObject);
    procedure TimerListMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TimerListDblClick(Sender: TObject);
    procedure TimerEditExit(Sender: TObject);
    procedure TimerEditKeyPress(Sender: TObject; var Key: Char);
    procedure TimerRefresh(item: TListItem; new:boolean);
    procedure DeleteTimerClick(Sender: TObject);
    procedure EditTimerClick(Sender: TObject);
    procedure LoadScriptfromfile1Click(Sender: TObject);
    procedure CustomColorListDblClick(Sender: TObject);
    procedure ColorPickerExit(Sender: TObject);
    procedure LineEditExit(Sender: TObject);
    procedure CustomColorListMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure LineEditKeyPress(Sender: TObject; var Key: Char);
    procedure AddCustomColorClick(Sender: TObject);
    procedure DeleteCustomColorClick(Sender: TObject);
    procedure DefaultColorsClick(Sender: TObject);
    procedure FontButtonClick(Sender: TObject);
    procedure OpenLogsClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonOpenSoundClick(Sender: TObject);
    procedure HotkeyListDblClick(Sender: TObject);
   // procedure HotKeyShortcutEdittmpExit(Sender: TObject);
    procedure HotkeyShortcutEditKeyPress(Sender: TObject; var Key: Char);
    procedure HotkeyShortcutEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HotkeyListMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure HotkeyShortcutEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ScriptFileEditChange(Sender: TObject);
    procedure HotKeyShortcutEditExit(Sender: TObject);
    //; index: integer);
//    procedure AboutBoxKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Settings1: TSettings1;
  pt: TPoint;
  item: TListItem;
  Events: TStringList;
  tempshift: TShiftstate;
  tempkey: Word;
  HotkeyShift: array [0..31] of TShiftstate;
  HotkeyNumber: array [0..31] of Word;

implementation

uses
  Unit1, Hotkey;

//procedure TForm1.SaveConfig(filename : string);

{$R *.dfm}

function GetCharFromVirtualKey(Key: Word): string;
var
   keyboardState: TKeyboardState;
   asciiResult: Integer;
begin
   GetKeyboardState(keyboardState) ;

   SetLength(Result, 2) ;
   asciiResult := ToAscii(key, MapVirtualKey(key, 0), keyboardState, @Result[1], 0) ;
   case asciiResult of
     0: Result := '';
     1: SetLength(Result, 1) ;
     2:;
     else
       Result := '';
   end;
end;

function Ctrl : Boolean;
var
allapot : TKeyboardState;
begin
GetKeyboardState(allapot) ;
Result := ((allapot[vk_Control] And 128) <> 0) ;
end;

function Shift : Boolean;
var
  State : TKeyboardState;
begin
  GetKeyboardState(State);
  Result := ((State[vk_Shift] and 128) <> 0);
end;

function Alt : Boolean;
var
  State : TKeyboardState;
begin
  GetKeyboardState(State);
  Result := ((State[vk_Menu] and 128) <> 0);
end;

function IsFileInUse(Path: string): boolean;
var
  hFile: THandle;

begin
  Result := False;
  if not FileExists(Path) then Exit;

  hFile := CreateFile(pchar(Path), GENERIC_READ or GENERIC_WRITE or GENERIC_EXECUTE,
                      0, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
  Result := hFile = INVALID_HANDLE_VALUE;
  if not Result then CloseHandle(hFile);

end;

procedure TSettings1.BitBtn1Click(Sender: TObject);
begin
 BitBtn1.Enabled:= false;
 BitBtn2.Enabled:= false;
 SaveScriptClick(BitBtn1);
 Form1.SaveConfig(ExtractFilePath(Application.ExeName)+'arsse.ini');
 ModalResult := mrOK;
 BitBtn1.Enabled:= true;
 BitBtn2.Enabled:= true; 
end;

procedure TSettings1.BitBtn2Click(Sender: TObject);
begin
 ModalResult := mrCancel;
end;

procedure TSettings1.EventListSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
 EventDesc.Text:= Events[Item.Index];
end;

procedure TSettings1.EventListMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if Button = mbLeft then item := EventList.GetItemAt(X,Y);
 if Button = mbRight Then
 Begin
  item := EventList.GetItemAt(X,Y);
  If item <> nil Then
  Begin
    pt.X := X;
    pt.Y := Y;
    pt := EventList.ClientToScreen(pt);
    if item.SubItems[0] = '' then EditScript1.Caption:= 'New Script'
    else EditScript1.Caption:= 'Edit Script';
    EventList.PopupMenu.Popup(pt.x,pt.y);
  End;
 End;
end;

procedure TSettings1.LoadScript1Click(Sender: TObject);
var seged: string;
begin
 if OpenDialog.Execute then
 begin
   seged:= OpenDialog.FileName;
   if Form1.Matches(ExtractFilePath(Application.ExeName)+'*',seged) then
      Delete(seged,1,Length(ExtractFilePath(Application.ExeName)));
   item.SubItems[0]:= seged;
   item.Checked:= true;
 end;
end;

procedure TSettings1.FormCreate(Sender: TObject);
//var i: integer;
begin

 ManualUpdate.OnClick:= Form1.ManualUpdateClick;

 OpenDialog.InitialDir:= ExtractFilePath(Application.ExeName)+'\script';

  Events:= TStringList.Create;

  Events.Add('Occurs when ARSSE starts. Parameteres: none');
  Events.Add('Occurs when ARSSE closes. Parameteres: none');
  Events.Add('Occurs when connects to a server. Parameteres: $SERVER_IP, $SERVER_PORT, $SERVER_NAME, $SERVER_NUM');
  Events.Add('Occurs when disconnects from a server. Parameteres: $SERVER_IP, $SERVER_PORT, $SERVER_NAME, $SERVER_NUM');
  Events.Add('Occurs when a player requests to join to a server. Parameteres: $PLAYER_IP, $PLAYER_PORT, $SERVER_IP, $SERVER_PORT, $SERVER_NAME, $SERVER_NUM');
  Events.Add('Occurs when a player joins to a server. Parameteres: $PLAYER_NAME, $PLAYER_IP, $SERVER_IP, $SERVER_PORT, $SERVER_NAME, $SERVER_NUM');
  Events.Add('Occurs when a player leaves a server. Parameteres: $PLAYER_NAME, $SERVER_IP, $SERVER_PORT, $SERVER_NAME, $SERVER_NUM');
  Events.Add('Occurs when a player uses in-game chat. Parameteres: $MESSAGE, $PLAYER_NAME, $PLAYER_NUM, $PLAYER_SCORE, $PLAYER_DEATHS, $PLAYER_RATE, $PLAYER_PING, $PLAYER_TEAM, $PLAYER_IP, $SERVER_IP, $SERVER_PORT, $SERVER_NAME, $SERVER_NUM');
  Events.Add('Occurs when an admin connects to a server. Parameteres: $ADMIN_IP, $SERVER_IP, $SERVER_PORT, $SERVER_NAME, $SERVER_NUM');
  Events.Add('Occurs when an admin disconnects from a server. Parameteres: $SERVER_IP, $SERVER_PORT, $SERVER_NAME, $SERVER_NUM');
  Events.Add('Occurs when a "Time Left" message is received from a server. Parameteres: $TIME_LEFT, $SERVER_IP, $SERVER_PORT, $SERVER_NAME, $SERVER_NUM');
  Events.Add('Occurs when ARSSE receives any data from the server. Parameteres: $DATA, $SERVER_IP, $SERVER_PORT, $SERVER_NAME, $SERVER_NUM');
  Events.Add('Occurs when ARSSE receives the REFRESHX packet. Parameteres: $DATA, $SERVER_IP, $SERVER_PORT, $SERVER_NAME, $SERVER_NUM');  
  Events.Add('Occurs when ARSSE receives message on IRC channel. Parameteres: $MESSAGE, $CHANNEL_NAME');
  Events.Add('Occurs when ARSSE joins the specified channel on IRC. Parameteres: $CHANNEL_NAME');
  Events.Add('Occurs when ARSSE leaves the specified channel on IRC. Parameteres: $CHANNEL_NAME');
  Events.Add('Occurs when ARSSE connects to IRC server. Parameteres: $SERVER_IP, $SERVER_PORT');
  Events.Add('Occurs when ARSSE disconnects to IRC server. Parameteres: $SERVER_IP, $SERVER_PORT');

end;

procedure TSettings1.EventListDblClick(Sender: TObject);
var Rect: TRect;
begin
  Rect:= item.DisplayRect(drBounds);
//  Rect.Top:= Rect.Top + TabSheet1.Top;
//  Rect.Left:= Rect.Left + TabSheet1.Left;
  ScriptFileEdit.Left:= Rect.Left + EventList.Column[0].Width +2;
  ScriptFileEdit.Top:= Rect.Top;
  ScriptFileEdit.Width:= 287;
  ScriptFileEdit.Height:= 18;
  ScriptFileEdit.Text:= item.SubItems[0];
  ScriptFileEdit.visible:= true;
  ScriptFileEdit.SetFocus;
end;

procedure TSettings1.ScriptFileEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then //ScriptFileEditExit(Sender);
 begin
  item.SubItems[0]:= ScriptFileEdit.Text;
  ScriptFileEdit.Visible:= false;
 end;


 if Key = #27 then
 begin
//  ScriptFileEdit.Text:= '';
  ScriptFileEdit.Visible:= false;
//  exit;
 end;
end;

procedure TSettings1.ScriptFileEditExit(Sender: TObject);
begin
 ScriptFileEdit.Visible:= false;
{
//  if ScriptFileEdit.Text <> '' then
//  begin
   item.SubItems[0]:= ScriptFileEdit.Text;
   ScriptFileEdit.Visible:= false;
//  end;
}
end;

procedure TSettings1.LoadScriptClick(Sender: TObject);
var seged: string;
begin
  OpenDialog.Filter:='Text files|*.txt|All files|*.*';
  if OpenDialog.Execute then
  begin
    seged:= OpenDialog.FileName;
    if Form1.Matches(ExtractFilePath(Application.ExeName)+'*',seged) then
       Delete(seged,1,Length(ExtractFilePath(Application.ExeName)));
    ScriptFile.Text:= seged;
    ScriptEditor.Lines.LoadFromFile(OpenDialog.FileName);
  end;
end;

procedure TSettings1.SaveScriptClick(Sender: TObject);
begin
 if ScriptFile.Text = '' then
 begin
  try
    if Sender.ClassName = 'TButton' then MessageDlg('Please specify a file name for your script!',mtError, [mbOk], 0);
  except
  end;
  exit;
 end; 

 if not Form1.Matches('*:\*',ScriptFile.Text) then ScriptEditor.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+ScriptFile.Text)
 else ScriptEditor.Lines.SaveToFile(ScriptFile.Text);
 try
  if Sender.ClassName = 'TButton' then MessageDlg('Script saved.',mtInformation, [mbOk], 0);
 except
 end; 
end;

procedure TSettings1.NewScriptClick(Sender: TObject);
var seged: string;
begin
  SaveDialog.Filter:= 'Text files|*.txt|All files|*.*';
  if SaveDialog.Execute then
  begin
   if fileexists(SaveDialog.FileName) then
     if MessageDlg('Are you sure you want to overwrite '+ExtractFileName(SaveDialog.FileName),mtConfirmation, [mbYes, mbNo], 0) = mrNo then exit;

       seged:= SaveDialog.FileName;
       if Form1.Matches(ExtractFilePath(Application.ExeName)+'*',seged) then
         Delete(seged,1,Length(ExtractFilePath(Application.ExeName)));
       ScriptFile.Text:= seged;
       ScriptEditor.Clear;
     //ScriptFile.Text:= SaveDialog.FileName;
 end;
end;

procedure TSettings1.EditScript1Click(Sender: TObject);
var seged: string;
begin
 if item.SubItems[0] = '' then
 begin
  item.SubItems[0]:= 'script\'+item.Caption+'.txt';
 end;
 seged:= item.SubItems[0];
 if not Form1.Matches('*:\*',seged) then seged:= ExtractFilePath(Application.ExeName)+seged;

 if fileexists(seged) then
 begin
  ScriptEditor.Lines.LoadFromFile(seged);
 end
 else ScriptEditor.Clear;
 ScriptFile.Text:= item.SubItems[0];
 item.Checked:= true;
 PageControl1.ActivePage:= TabSheet3;
end;

procedure TSettings1.ClearScript1Click(Sender: TObject);
begin
 item.SubItems[0]:= '';
 item.Checked:= false;
end;

procedure TSettings1.InsertCmdClick(Sender: TObject);
var seged: string;
begin
 If CommandList.Text = '' then exit;
 seged:= CommandList.Text;
 //SendMessage(ScriptEditor.Handle, EM_REPLACESEL, 1, LongInt(@seged));

// ScriptEditor.Lines.Insert(ScriptEditor.CaretPos.Y,seged);
  ScriptEditor.SelText:= seged;

  ScriptEditor.SetFocus;

end;

procedure TSettings1.ScriptHelpClick(Sender: TObject);
begin
 ShowMessage('Not yet :< but expect it soon! :)');
end;



procedure TSettings1.AboutBoxMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 HideCaret((Sender as TRichEdit).Handle);
 BitBtn1.SetFocus;
end;

{
procedure TSettings1.AboutBoxKeyPress(Sender: TObject; var Key: Char);
begin
 HideCaret((Sender as TRichEdit).Handle);
 BitBtn1.SetFocus;
end;
}

procedure TSettings1.AddTimerClick(Sender: TObject);
var i: TListitem;
begin
 if TimerList.Items.Count <= MAX_TIMER then
 begin
  i:= TimerList.Items.Add;
  i.Caption:= 'Timer'+inttostr(TimerList.Items.Count);
  i.SubItems.Add('1');
  i.SubItems.Add('60');
  i.SubItems.Add('');
  i.Checked:= true;

  TimerRefresh(i,true);  //,ServerList[Form1.ServerTab.TabIndex].TimerName.Count-1)
 end;
{
 with ServerList[Form1.ServerTab.TabIndex].Timers[ServerList[Form1.ServerTab.TabIndex].TimerName.Count] do
 begin
   Timer:= TTimer.Create(Form1);
   Timer.OnTimer:= Form1.ARSSETimerTimer;
   ServerList[Form1.ServerTab.TabIndex].TimerName.Add('Pr�ba Timer');

   Timer.Enabled:= true;
   Timer.Interval:= 60;
   ScriptFile:= 'script/OnTimer.txt';
//   exists:= true;
   Loop:= 1;
 end;
}
end;

procedure TSettings1.TimerRefresh(item: TListItem; new:boolean);//; index: integer);
begin
 if item.index > MAX_TIMER then
   exit;
 with ServerList[Form1.ServerTab.TabIndex].Timers[item.index] do//Form1.ServerTab.TabIndex].Timers[ServerList[Form1.ServerTab.TabIndex].TimerName.Count] do
 begin
  if new then
  begin
   Timer:= TTimer.Create(Form1);
   Timer.OnTimer:= Form1.ARSSETimerTimer;
   ServerList[Form1.ServerTab.TabIndex].TimerName.Add(item.Caption);
  end
  else
   ServerList[Form1.ServerTab.TabIndex].TimerName[item.Index]:= item.Caption;

   Timer.Enabled:= item.Checked;
   Timer.Interval:= strtoint(item.SubItems[1])*1000;
   ScriptFile:= item.SubItems[2];
   Loop:= strtoint(item.SubItems[0]);
//   exists:= true;
 end;

end;

procedure TSettings1.TimerListMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if TimerList.Items.Count=0 then exit;
if TimerList.GetItemAt(X,Y) = nil then exit; 

 if Button = mbLeft then
 begin
  item :=  TimerList.GetItemAt(X,Y);
//  ShowMessage(inttostr(X));
  case (X) of
    0..145: begin pt.Y:= 0; pt.X:= 0; end;
    146..192: begin pt.Y:= 1; pt.X:= 146; end;
    193..240: begin pt.Y:= 2; pt.X:= 193;  end;
    241..420: begin pt.Y:= 3; pt.X:= 241; end;
  end;
 end;
 if Button = mbRight Then
 Begin
  item := TimerList.GetItemAt(X,Y);
  If item <> nil Then
  Begin
    pt.X := X;
    pt.Y := Y;
    pt := TimerList.ClientToScreen(pt);
    if item.SubItems[2] = '' then EditScript2.Caption:= 'New Script'
    else EditScript2.Caption:= 'Edit Script';
    TimerList.PopupMenu.Popup(pt.x,pt.y);
  End;
 End;
 TimerRefresh(item,false);
end;

procedure TSettings1.TimerListDblClick(Sender: TObject);
var Rect: TRect;
begin
  if (item = nil) or (TimerList.Selected=nil)then exit;

  Rect:= item.DisplayRect(drBounds);
//  Rect.Top:= Rect.Top + TabSheet1.Top;
//  Rect.Left:= Rect.Left + TabSheet1.Left;
  TimerEdit.Left:= Rect.Left + 2 + pt.X; //TimerList.Columns[pt.Y].Width; // + EventList.Column[0].Width;
  TimerEdit.Top:= Rect.Top;
  TimerEdit.Width:= TimerList.Columns[pt.Y].Width;
  TimerEdit.Height:= 18;
  case pt.Y of
   0: TimerEdit.Text:= item.Caption;
   1..3: TimerEdit.Text:= item.SubItems[pt.Y-1];
   end;
  TimerEdit.visible:= true;
  TimerEdit.SetFocus;
end;

procedure TSettings1.TimerEditExit(Sender: TObject);
begin
 TimerEdit.Visible:= false;

// ShowMessage(inttostr(item.Index));

 case pt.Y of
  0: item.Caption:= TimerEdit.Text;
  1..3: item.SubItems[pt.Y-1]:= TimerEdit.Text;
 end;


 TimerRefresh(item,false);//,item.Index);
end;

procedure TSettings1.TimerEditKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then

 begin

 case pt.Y of
  0: item.Caption:= TimerEdit.Text;
  1..3: item.SubItems[pt.Y-1]:= TimerEdit.Text;
 end;
  TimerEdit.Visible:= false;
  Key:= #0;
 end;


 if Key = #27 then
 begin
  TimerEdit.Visible:= false;
 end;
end;

procedure TSettings1.DeleteTimerClick(Sender: TObject);
begin
if TimerList.Selected = nil then exit;

  Form1.RemoveTimer(Form1.ServerTab.TabIndex,TimerList.Selected.Index);
  TimerList.Items[TimerList.Selected.Index].Delete;
end;

procedure TSettings1.EditTimerClick(Sender: TObject);
var seged: string;
begin
if (item = nil) or (TimerList.Selected=nil)then exit;
 if item.SubItems[2] = '' then
 begin
  item.SubItems[2]:= 'script\On'+item.Caption+'.txt';
  TimerRefresh(item,false);
 end;
if TimerList.Selected = nil then exit;

item:= TimerList.Selected;

 seged:= item.SubItems[2];
 if not Form1.Matches('*:\*',seged) then seged:= ExtractFilePath(Application.ExeName)+seged;

 if fileexists(seged) then
 begin
  ScriptEditor.Lines.LoadFromFile(seged);
 end
 else ScriptEditor.Clear;
 ScriptFile.Text:= item.SubItems[2];
// item.Checked:= true;
 PageControl1.ActivePage:= TabSheet3;
end;

procedure TSettings1.LoadScriptfromfile1Click(Sender: TObject);
var seged: string;
begin
 if OpenDialog.Execute then
 begin
   seged:= OpenDialog.FileName;
   if Form1.Matches(ExtractFilePath(Application.ExeName)+'*',seged) then
      Delete(seged,1,Length(ExtractFilePath(Application.ExeName)));
   item.SubItems[2]:= seged;
   item.Checked:= true;
 end;
 TimerRefresh(item,false);
end;



procedure TSettings1.CustomColorListDblClick(Sender: TObject);
var Rect: TRect;
begin
  if CustomColorList.Selected = nil then exit;

  Rect:= CustomColorList.Selected.DisplayRect(drBounds);
//  Rect.Top:= Rect.Top + TabSheet1.Top;
//  Rect.Left:= Rect.Left + TabSheet1.Left;
  ColorPicker.Left:= Rect.Left + 24 + pt.X; //TimerList.Columns[pt.Y].Width; // + EventList.Column[0].Width;
  ColorPicker.Top:= Rect.Top + CustomColorList.Top - 2;
  ColorPicker.Width:= CustomColorList.Columns[pt.Y].Width;
  ColorPicker.Height:= 18;

  LineEdit.Left:= Rect.Left + 2 + pt.X;
  LineEdit.Top:= Rect.Top + CustomColorList.Top;
  LineEdit.Width:= CustomColorList.Columns[pt.Y].Width;
  LineEdit.Height:= 18;
  case pt.Y of
   0: begin
        LineEdit.Text:= CustomColorList.Selected.Caption;
        LineEdit.visible:= true;
        LineEdit.SetFocus;
      end;
   1: begin
        ColorPicker.Selected:= stringToColor(CustomColorList.Selected.SubItems[pt.Y-1]);
        ColorPicker.visible:= true;
        ColorPicker.SetFocus;
      end;
   end;
end;

procedure TSettings1.ColorPickerExit(Sender: TObject);
begin

 item.SubItems[0]:= colorToString(ColorPicker.Selected);

  ColorPicker.Visible:= false;
end;

procedure TSettings1.LineEditExit(Sender: TObject);
begin
  LineEdit.Visible:= false;
  item.Caption:= LineEdit.Text;

//  item:= nil;
end;

procedure TSettings1.CustomColorListMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if CustomColorList.Items.Count=0 then exit;
if CustomColorList.GetItemAt(X,Y) = nil then exit;

 if Button = mbLeft then
 begin
  item :=  CustomColorList.GetItemAt(X,Y);
//  ShowMessage(inttostr(X));
  case (X) of
    0..271: begin pt.Y:= 0; pt.X:= 0; end;
    272..416: begin pt.Y:= 1; pt.X:= 272; end;
//    193..240: begin pt.Y:= 2; pt.X:= 193;  end;
//    241..420: begin pt.Y:= 3; pt.X:= 241; end;
  end;
 end;
 if Button = mbRight Then
 Begin
  item := CustomColorList.GetItemAt(X,Y);
  If item <> nil Then
  Begin
    pt.X := X;
    pt.Y := Y;
    pt := CustomColorList.ClientToScreen(pt);
//    if item.SubItems[2] = '' then EditScript2.Caption:= 'New Script'
//    else EditScript2.Caption:= 'Edit Script';
    CustomColorList.PopupMenu.Popup(pt.x,pt.y);
  End;
 End;
// TimerRefresh(item,false);
end;

procedure TSettings1.LineEditKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then

 begin
  LineEdit.Visible:= false;
  item.Caption:= LineEdit.Text;
//  item:= nil;
  Key := #0
 end;


 if Key = #27 then
 begin
  LineEdit.Visible:= false;
//  item:= nil;
 end;

end;

procedure TSettings1.AddCustomColorClick(Sender: TObject);
begin
 CustomColorList.Items.Add;
 CustomColorList.Items.Item[ CustomColorList.Items.Count-1].Caption:= 'modify me';
 CustomColorList.Items.Item[ CustomColorList.Items.Count-1].SubItems.Add('clBlack');
end;

procedure TSettings1.DeleteCustomColorClick(Sender: TObject);
begin
if CustomColorList.Selected = nil then exit;

  CustomColorList.Items[CustomColorList.Selected.Index].Delete;
end;

procedure TSettings1.DefaultColorsClick(Sender: TObject);
begin
 mainConsole.Selected:= clBlack;
 normalText.Selected:= clLime;
 Chat.Selected:= clAqua;
 Say.Selected:= clYellow;
 Pm.Selected:= clYellow;
 TeamChat.Selected:= clSkyBlue;
 MutedChat.Selected:= clSilver;
 AdminChat.Selected:= clSilver;
 Clientlist.Selected:= clOlive;
 FontButton.Caption:= 'MS Sans Serif';
end;

procedure TSettings1.FontButtonClick(Sender: TObject);
begin
 FontDialog1.Font.Name:= FontButton.Caption;
 if FontDialog1.Execute then
  begin
    FontButton.Caption:= FontDialog1.Font.Name;

  end;
end;

procedure TSettings1.OpenLogsClick(Sender: TObject);
begin
 ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName)+'\logs'),PChar(0),PChar(0),SW_SHOWNORMAL);
end;

procedure TSettings1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Ctrl and (Key = 65) then
  if (Sender.ClassType=TEdit) then (Sender as TEdit).SelectAll
             else if (Sender.ClassType=TComboBox) then (Sender as TComboBox).SelectAll
             else if (Sender.ClassType=TRichEdit) then (Sender as TRichEdit).SelectAll
             else if (Sender.ClassType=TMemo) then (Sender as TMemo).SelectAll;

end;

procedure TSettings1.ButtonOpenSoundClick(Sender: TObject);
var soundfile: string;
begin
  OpenDialog.Filter:='Wave audiofiles (*.WAV)|*.wav|All files|*.*';
  if OpenDialog.Execute then
  begin
    soundfile:= OpenDialog.FileName;
    if Form1.Matches(ExtractFilePath(Application.ExeName)+'*',soundfile) then
       Delete(soundfile,1,Length(ExtractFilePath(Application.ExeName)));
    SoundfileName.Text:= soundfile;
  end;
end;

procedure TSettings1.HotkeyListDblClick(Sender: TObject);
var Rect: TRect;
begin
  if HotkeyList.Selected = nil then exit;

  Rect:= HotkeyList.Selected.DisplayRect(drBounds);

  HotkeyShortcutEdit.Left:= Rect.Left + 2 + pt.X;
  HotkeyShortcutEdit.Top:= Rect.Top + HotkeyList.Top;
  HotkeyShortcutEdit.Width:= HotkeyList.Columns[pt.Y].Width;
  HotkeyShortcutEdit.Height:= 18;
  
  if(pt.Y=0) then
  begin
    HotkeyShortcutEdit.Text:= HotkeyList.Selected.Caption;
    
    tempshift := Config.hotkeys[HotkeyList.Selected.Index].shift;
    tempkey := Config.hotkeys[HotkeyList.Selected.Index].key;
    HotkeyShortcutEdit.visible:= true;
    HotkeyShortcutEdit.SetFocus;
  end; 
end;

{procedure TSettings1.HotKeyShortcutEdittmpExit(Sender: TObject);
begin
  HotkeyShortcutEdit.Visible:= false;
  item.Caption:= ShortCutToText(HotkeyShortcutEdittmp.HotKey);
end; }

procedure TSettings1.HotkeyShortcutEditKeyPress(Sender: TObject;
  var Key: Char);
begin     {
  if Key = #13 then
  begin
    HotkeyShortcutEdit.Visible:= false;
    item.Caption:= HotkeyShortcutEdit.Text;
    Key := #0
  end;

  if Key = #27 then
  begin
   HotkeyShortcutEdit.Visible:= false;
  end;

  HotkeyShortcutEdit.Text:='';
  if Shift then
    HotkeyShortcutEdit.Text:='Shift';

  if Ctrl  then
  begin
    if Shift then
      HotkeyShortcutEdit.Text:=HotkeyShortcutEdit.Text+'+';
    HotkeyShortcutEdit.Text:=HotkeyShortcutEdit.Text+'Ctrl';
  end;

  if Alt then
  begin
    if (Shift) or (Ctrl) then
      HotkeyShortcutEdit.Text:=HotkeyShortcutEdit.Text+'+';
    HotkeyShortcutEdit.Text:=HotkeyShortcutEdit.Text+'Alt';
  end;

  Label27.Caption:='Key:='+inttostr(integer(Key));

  //if (Key>=33) and (Key<=127) then
  begin
    if (Shift) or (Ctrl) or (Alt) then
      HotkeyShortcutEdit.Text:=HotkeyShortcutEdit.Text+'+';
    HotkeyShortcutEdit.Text:=HotkeyShortcutEdit.Text+UpperCase(Key);
  end;       }
  Key:=#0;
end;

procedure TSettings1.HotkeyShortcutEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //if ssShift in Shift then
  //HotkeyShortcutEdit.Text:='Shift+'+Char(Key);
  Shift:=[];
  Key:=0;
end;

procedure TSettings1.HotkeyListMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if HotkeyList.Items.Count=0 then exit;
  if HotkeyList.GetItemAt(X,Y) = nil then exit;

  if Button = mbLeft then
  begin
    item :=  HotkeyList.GetItemAt(X,Y);
    if (X<=HotkeyList.Columns[0].Width) then
    begin
      pt.Y:= 0;
      pt.X:= 0;
    end
    else
    begin
      pt.Y:= 1;
      pt.X:=HotkeyList.Columns[0].Width;
    end;
  end;
end;

procedure TSettings1.HotkeyShortcutEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
var
  str: String;
begin
  str := ShiftAndKeyToStr(Key, Shift);
  if Length(str) > 0 then
  begin
    HotKeyShortcutEdit.Text := str;
    if str = ' ' then
    begin
      tempshift := [];
      tempkey := 0;
    end
    else
    begin
      tempshift := Shift;
      tempkey := Key;
    end;
  end;
  if Key = VK_RETURN then
  begin
    item.Caption:= HotkeyShortcutEdit.Text;

    HotkeyShift[item.Index] := tempshift;
    HotkeyNumber[item.Index] := tempkey;

    HotKeyShortcutEdit.Hide;
  end;
  Shift:=[];
  Key:=0;
end;

procedure TSettings1.ScriptFileEditChange(Sender: TObject);
begin
 if FileExists(ScriptFileEdit.Text) or
    ((not Form1.Matches('*:\*', ScriptFileEdit.Text)) and
    (FileExists(ExtractFilePath(Application.ExeName) + ScriptFileEdit.Text)))
    then
   ScriptFileEdit.Font.Color:=clGreen
 else
   ScriptFileEdit.Font.Color:=clRed;
end;

procedure TSettings1.HotKeyShortcutEditExit(Sender: TObject);
begin
  HotkeyShortcutEdit.Visible:= false;
  // don't save
  
  //item.Caption:= HotkeyShortcutEdit.Text;

  //HotkeyShift[item.Index] := tempshift;
  //HotkeyNumber[item.Index] := tempkey;

  // Don't save to settings until we clicked OK
end;

end.
