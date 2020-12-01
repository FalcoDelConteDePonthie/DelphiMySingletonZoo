unit Zoo;

interface

uses
    Winapi.Windows,
    Winapi.Messages,
    System.SysUtils,
    System.Classes,
    System.Variants,
    System.Generics.Collections, {TArray}
    System.Generics.Defaults,
    Vcl.StdCtrls,
    Vcl.Controls, {TComparer<T>}
    Vcl.Graphics,
    Vcl.Forms,
    Vcl.Dialogs,
    Animale,
    Cane,
    Gatto,
    Camaleonte,
    AnimaliDelloZoo;

type
    TForm5 = class(TForm)
      Memo1: TMemo;
      Animal: TButton;
      Cane: TButton;
      Gatto: TButton;
      Verso: TButton;
      Zampa: TButton;
      Cambia_colore: TButton;
      Button2: TButton;
      Camaleonte: TButton;

      procedure CaneClick(Sender: TObject);
      procedure AnimalClick(Sender: TObject);
      procedure GattoClick(Sender: TObject);
      procedure VersoClick(Sender: TObject);
      procedure ZampaClick(Sender: TObject);
      procedure Cambia_coloreClick(Sender: TObject);
      procedure Button2Click(Sender: TObject);
      procedure CamaleonteClick(Sender: TObject);
    strict private
        { Strict Private declarations }
        FTipoAnimale: String;
        FAnimaliDelloZoo: TAnimaliDelloZoo;
    public
        { Public declarations }
        property TipoAnimale: String read FTipoAnimale write FTipoAnimale;
    end;

var
    Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.AnimalClick(Sender: TObject);
var
  LAnimale: TAnimale;
begin
  LAnimale := TAnimale.Create('Animale generico', 'Nil', 'Nil', 0);
  FAnimaliDelloZoo := TAnimaliDelloZoo.Instance;
  FAnimaliDelloZoo.Add(LAnimale);
  Memo1.Lines.Clear;
  Memo1.Lines.Add(FAnimaliDelloZoo.Instance.PrintAll);
end;

procedure TForm5.CaneClick(Sender: TObject);
var
  LAnimale: TAnimale;
begin
  LAnimale := TCane.Create('Cane', 'Marrone', 'Bau', 4);
  FAnimaliDelloZoo := TAnimaliDelloZoo.Instance;
  FAnimaliDelloZoo.Add(LAnimale);
  Memo1.Lines.Clear;
  Memo1.Lines.Add(FAnimaliDelloZoo.Instance.PrintAll);
end;

procedure TForm5.GattoClick(Sender: TObject);
var
  LAnimale: TAnimale;
begin
  LAnimale := TGatto.Create('Gatto', 'Rosso', 'Miao', 4, 'Willy');
  FAnimaliDelloZoo := TAnimaliDelloZoo.Instance;
  FAnimaliDelloZoo.Add(LAnimale);
  Memo1.Lines.Clear;
  Memo1.Lines.Add(FAnimaliDelloZoo.Instance.PrintAll);
end;

procedure TForm5.CamaleonteClick(Sender: TObject);
var
  LAnimale: TAnimale;
begin
  LAnimale := TCamaleonte.Create('Camaleonte', 'Rosso', 'Miao', 4, 'Willy');
  FAnimaliDelloZoo := TAnimaliDelloZoo.Instance;
  FAnimaliDelloZoo.Add(LAnimale);
  Memo1.Lines.Clear;
  Memo1.Lines.Add(FAnimaliDelloZoo.Instance.PrintAll);
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  FAnimaliDelloZoo.Clear;
end;

procedure TForm5.Cambia_coloreClick(Sender: TObject);
var
  LIdx: Integer;
  LAnimale: TAnimale;
  LNewColor: String;
begin
  Memo1.Lines.Clear;
  for LIdx:= 0 to FAnimaliDelloZoo.AnimaliZoo.Count - 1 do
  begin
      LAnimale := FAnimaliDelloZoo.AnimaliZoo[LIdx];
      LNewColor := LAnimale.CambiaColore;
      Memo1.Lines.Add(LAnimale.Tipo + ' dice: ' + LNewColor);
  end;
end;

procedure TForm5.VersoClick(Sender: TObject);
var
  LIdx: Integer;
  LAnimale: TAnimale;
begin
  Memo1.Lines.Clear;
  for LIdx:= 0 to FAnimaliDelloZoo.AnimaliZoo.Count - 1 do
  begin
    LAnimale := FAnimaliDelloZoo.AnimaliZoo[LIdx];
    Memo1.Lines.Add(LAnimale.Tipo + ' dice: ' + LAnimale.FaiVerso());
  end;
end;

procedure TForm5.ZampaClick(Sender: TObject);
var
  LIdx: Integer;
  LAnimale: TAnimale;
begin
  Memo1.Lines.Clear;
  for LIdx:= 0 to FAnimaliDelloZoo.AnimaliZoo.Count - 1 do
  begin
    LAnimale := FAnimaliDelloZoo.AnimaliZoo[LIdx];
    Memo1.Lines.Add(LAnimale.Tipo + ' dice: ' + LAnimale.AlzaUnaZampa());
  end;
end;

end.
