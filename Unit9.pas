unit Unit9;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.StdCtrls, FMX.Objects, FMX.Controls.Presentation, FMX.Edit, FMX.Layouts;

type
  TForm9 = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Edit1: TEdit;
    Line1: TLine;
    Lb: TLabel;
    Line2: TLine;
    mtop: TFloatAnimation;
    fsize: TFloatAnimation;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    fsizeI: TFloatAnimation;
    mtopI: TFloatAnimation;
    opa: TFloatAnimation;
    opaI: TFloatAnimation;
    clabel: TColorAnimation;
    ColorAnimation1: TColorAnimation;
    clabelI: TColorAnimation;
    Layout3: TLayout;
    Button2: TButton;
    procedure Edit1Enter(Sender: TObject);
    procedure mtopFinish(Sender: TObject);
    procedure fsizeFinish(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure fsizeIFinish(Sender: TObject);
    procedure mtopIFinish(Sender: TObject);
    procedure opaFinish(Sender: TObject);
    procedure opaIFinish(Sender: TObject);
    procedure clabelFinish(Sender: TObject);
    procedure clabelIFinish(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form9: TForm9;

implementation

{$R *.fmx}

uses Unit5;



//  Cette fonction permet d'injecter dans la frame dans la fiche.
//  Mais il faut tout d'abord cr�er la variable f1 au sein de la frame elle m�me avec pour type la frame.
procedure TForm9.Button1Click(Sender: TObject);
begin
if not Assigned(f1) then
  begin
  // Ces deux ligne suffisent pour faire assigner une frame dans une autre fiche.
    f1 := TFrame5.Create(Form9);
    f1.Parent := form9.Layout3;

  end;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
f1.Destroy;
end;

procedure TForm9.clabelFinish(Sender: TObject);
begin
clabel.Enabled := false;
end;

procedure TForm9.clabelIFinish(Sender: TObject);
begin
clabelI.Enabled := false;
end;

procedure TForm9.Edit1Enter(Sender: TObject);
begin

if Edit1.Text = '' then
    begin
       fsize.Enabled := true;
       mtop.Enabled := true;
       opa.Enabled := true;
       clabel.Enabled := true;
    end;


fsizeI.Enabled := false;
mtopI.Enabled := false;
opaI.Enabled := false;
clabelI.Enabled := false;

end;

procedure TForm9.Edit1Exit(Sender: TObject);
begin



fsize.Enabled := false;
mtop.Enabled := false;
opa.Enabled := false;
clabel.Enabled := false;

    if Edit1.Text = '' then
      begin
          fsizeI.Enabled := true;
          mtopI.Enabled := true;
          opaI.Enabled := true;
          clabelI.Enabled := true;
      end;




end;

procedure TForm9.fsizeFinish(Sender: TObject);
begin
fsize.Enabled := false;
end;

procedure TForm9.fsizeIFinish(Sender: TObject);
begin
fsizeI.Enabled := true;
end;

procedure TForm9.mtopFinish(Sender: TObject);
begin
mtop.Enabled := false;
end;

procedure TForm9.mtopIFinish(Sender: TObject);
begin
mtopI.Enabled := true;
end;

procedure TForm9.opaFinish(Sender: TObject);
begin
opa.Enabled := false;
end;

procedure TForm9.opaIFinish(Sender: TObject);
begin
opaI.Enabled := false;
end;

end.