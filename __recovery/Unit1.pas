unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, ImFilterU,
  TypecastU, ImagePrU, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ImagePr1: TImagePr;
    TypeCast1: TTypeCast;
    imageFilter1: TimageFilter;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Image1: TImage;
    Image2: TImage;
    Shape1: TShape;
    Shape2: TShape;
    Edit1: TEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  matrix, matrixx: TBitMat;
  bit: TBitmap;


implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
if OpenDialog1.Execute() then
  begin
    Image1.Picture.LoadFromFile(OpenDialog1.FileName);
  end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
 bit := TBitmap.Create;
  bit.Assign(Image1.Picture.Graphic);
  ImagePr1.Image2Mat(bit, matrix);


end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
 ImagePr1.Mat2Image(matrixx, bit);
 Image1.Picture.Bitmap.Assign(bit);
 bit.free;
end;

end.
