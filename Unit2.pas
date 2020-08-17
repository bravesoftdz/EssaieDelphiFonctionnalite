unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Effects, FMX.Controls.Presentation, FMX.StdCtrls, Unit6;

type
  TForm2 = class(TForm)
    main: TRectangle;
    Rectangle2: TRectangle;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    Circle1: TCircle;
    Rectangle4: TRectangle;
    ShadowEffect3: TShadowEffect;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button1: TButton;
    Frame61: TFrame6;
    Frame62: TFrame6;
    Rectangle1: TRectangle;
    ShadowEffect4: TShadowEffect;
    procedure Button1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses Unit1;

procedure TForm2.Button1Click(Sender: TObject);

begin
 form1.show;
 form2.Hide;
end;

end.