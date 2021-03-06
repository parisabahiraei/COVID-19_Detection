unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, ImFilterU,
  TypecastU, ImagePrU, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

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
    GL1: TEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    GL2: TEdit;
    Label2: TLabel;
    SaveDialog1: TSaveDialog;
    Shape1: TShape;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  matrix: TBitMat;
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
var
  i, j: Integer;
  matrixx: TBitMat;

begin
  bit := TBitmap.Create;
  bit.Assign(Image1.Picture.Graphic);
  ImagePr1.Image2Mat(bit, matrix);

  matrixx.Colr := False;
  ImagePr1.MakeBW(matrix);
  matrixx.Pixels := 608;
  matrixx.Lines := 608;
  setlength(matrixx.Picture, matrixx.Pixels, matrixx.Lines);

  for i := 0 to matrix.Pixels - 1 do
    for j := 0 to matrixx.Lines - 1 do
    begin
      if (matrix.Picture[j, i] > StrToInt(GL1.Text)) and
        (matrix.Picture[j, i] < StrToInt(GL2.Text)) then
        matrixx.Picture[j, i] := matrix.Picture[j, i];
    end;

  matrix := BitMatAssign(matrixx);
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  ImagePr1.Mat2Image(matrix, bit);
//  if SaveDialog1.Execute() then
//  begin
//    bit.SaveToFile(SaveDialog1.FileName);
//  end;
  Image2.Picture.Bitmap.Assign(bit);
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
var
  i, j, x, y: Integer;
  matrixxx: TBitMat;
begin

  matrixxx.Colr := False;
  matrixxx.Pixels := 608;
  matrixxx.Lines := 608;
  setlength(matrixxx.Picture, matrixxx.Pixels, matrixxx.Lines);

  for i := 1 to matrix.Pixels - 2 do
    for j := 1 to matrix.Lines - 2 do
    begin
      for x := -1 to 1 do
        for y := -1 to 1 do
        begin
          matrixxx.Picture[j, i] := matrixxx.Picture[j, i] +
            trunc((1 / 9) * matrix.Picture[j + x, i + y]);
        end;

    end;

  matrix := BitMatAssign(matrixxx);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  bit.Free;
end;

end.
