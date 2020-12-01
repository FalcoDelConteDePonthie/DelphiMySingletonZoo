unit Cane;

interface

uses
  Animale;

type
  { TCane }
  TCane = class(TAnimale)
  strict private
    FNome: String;

  strict protected

  public
    function FaiVerso(): String; override;
    function AlzaUnaZampa(): String; override;
    function CambiaColore(): String; override;
    constructor Create(const ATipo: String; const AColore: String;
      const AVerso: String; const ANumeroZampe: Integer;
      const ANome: String); overload;

    property Nome: String read FNome;
  end;

implementation

{ TCane }
constructor TCane.Create(const ATipo: String; const AColore: String;
  const AVerso: String; const ANumeroZampe: Integer; const ANome: String);
begin
  Tipo := ATipo;
  Colore := AColore;
  Verso := AVerso;
  NumeroZampe := ANumeroZampe;
  FNome := ANome;
end;

function TCane.AlzaUnaZampa: String;
begin
  result := 'Zampa alzata';
end;

function TCane.CambiaColore(): String;
begin
  result := 'Sono un cane non posso cambiare colore';
end;

function TCane.FaiVerso: String;
begin
  result := 'Bau Bau';
end;

end.
