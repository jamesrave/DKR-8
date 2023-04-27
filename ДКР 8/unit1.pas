unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TMain }

  TMain = class(TForm)
    Rave: TEdit;
    Smile: TImage;
    Staaaaart: TButton;
    Pause: TButton;
    Reset: TButton;
    Numbers: TLabel;
    Sec: TLabel;
    Timer1: TTimer;
    procedure StaaaaartClick(Sender: TObject);
    procedure PauseClick(Sender: TObject);
    procedure ResetClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Main: TMain;

  Start:Double;
  b:boolean;

implementation

{$R *.lfm}

{ TMain }

function GetTime:TDateTime;
var
  s:TSystemTime;
  begin
   GetLocalTime(s);
   Result:=SystemTimeToDateTime(s);
  end;

procedure TMain.Timer1Timer(Sender: TObject);
begin
 if not (b) then
 Start:=GetTime;
 b:=True;
 Numbers.Caption:=FormatDateTime('hh:nn:ss:zzz',GetTime-Start);
end;

procedure TMain.StaaaaartClick(Sender: TObject);
begin
  b:=False;
  Timer1.Enabled:=True;
end;

procedure TMain.PauseClick(Sender: TObject);
begin
  Timer1.Enabled:=not Timer1.Enabled;
end;

procedure TMain.ResetClick(Sender: TObject);
begin
  Timer1.Enabled:=False;
  Numbers.Caption:=FormatDateTime('00:00:00:000',GetTime-Start);
end;

end.

