unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Spin,
  ExtCtrls,Process;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    SpinEdit1: TSpinEdit;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  s: string;
begin
  case RadioGroup2.ItemIndex of
       0: if RunCommand('/bin/bash',['-c','pkexec opencorsairlink --device 0 --led mode=0,colors=FFFFFF'],s) then
             memo1.lines.Append(s);
       1: if RunCommand('/bin/bash',['-c','pkexec opencorsairlink --device 0 --led mode=0,colors=FF0000'],s) then
             memo1.lines.Append(s);
       2: if RunCommand('/bin/bash',['-c','pkexec opencorsairlink --device 0 --led mode=0,colors=00FF00'],s) then
             memo1.lines.Append(s);
       3: if RunCommand('/bin/bash',['-c','pkexec opencorsairlink --device 0 --led mode=0,colors=0000FF'],s) then
             memo1.lines.Append(s);
       4: if RunCommand('/bin/bash',['-c','pkexec opencorsairlink --device 0 --led mode=0,colors=FF00FF'],s) then
             memo1.lines.Append(s);
       5: if RunCommand('/bin/bash',['-c','pkexec opencorsairlink --device 0 --led mode=0,colors=FFFF00'],s) then
             memo1.lines.Append(s);
       6: if RunCommand('/bin/bash',['-c','pkexec opencorsairlink --device 0 --led mode=0,colors=00FFFF'],s) then
             memo1.lines.Append(s);
       7: if RunCommand('/bin/bash',['-c','pkexec opencorsairlink --device 0 --led mode=0,colors=FF7700'],s) then
             memo1.lines.Append(s);
  end;

  case RadioGroup3.ItemIndex of
    0: if RunCommand('/bin/bash',['-c','pkexec opencorsairlink --device 0 --fan mode=3'],s) then
             memo1.lines.Append(s);
    1: if RunCommand('/bin/bash',['-c','pkexec opencorsairlink --device 0 --fan mode=4'],s) then
             memo1.lines.Append(s);
    2: if RunCommand('/bin/bash',['-c','pkexec opencorsairlink --device 0 --fan mode=5'],s) then
             memo1.lines.Append(s);
  end;

  RadioGroup2.ItemIndex:=8;
  RadioGroup3.ItemIndex:=3;

end;

end.

