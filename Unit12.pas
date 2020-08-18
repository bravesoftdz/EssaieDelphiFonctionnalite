unit Unit12;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, Unit13, Unit5;

type
  TForm12 = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form12: TForm12;
  container : array [0..1] of TFrame13;
  element : array [0..4] of TFrame5;
  nom : array[0..4] of string;
  i : integer;

implementation

{$R *.fmx}

procedure TForm12.FormCreate(Sender: TObject);
begin

    nom[0] := 'Ham';
    nom[1] := 'Zaoui';
    nom[2] := 'Billy';
    nom[3] := 'Enfoir�';
    nom[4] := 'Mapa';


    for i := 0 to 1 do
      begin
         container[i] := TFrame13.Create(Form12);
         container[i].Name := 'utile' + IntToStr(i);
      end;

    for i := 0 to 4 do
      begin
        element[i] := TFrame5.Create(Self);
        element[i].Name := 'element' + IntToStr(i);
        element[i].Label1.Text := nom [i];
      end;

    for i := 0 to 1 do
      begin
        element[i].Parent := container[0].Layout1;
      end;

    for i := 2 to 4 do
      begin
        element[i].Parent := container[1].Layout1;
      end;


        container[0].Parent := Form12.Layout1;
        container[1].Parent := Form12.Layout2;


end;

end.
