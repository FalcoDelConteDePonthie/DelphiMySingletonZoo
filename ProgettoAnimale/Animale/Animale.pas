unit Animale;

interface

type
  { TAnimale }
  TAnimale = class
    { Ogni animale ha un nome, un colore, un verso, un numero di zampe }
  strict private
    FTipo, FColore, FVerso: String;
    FNumeroZampe, FNumeroZampeBasse: Integer;
  strict protected

  public
    constructor Create(const ATipo: String; const AColore: String;
      const AVerso: String; const ANumeroZampe: Integer);
    function FaiVerso(): String; virtual;
    function AlzaUnaZampa(): String; virtual;
    function CambiaColore(): String; virtual;

    property Tipo: String read FTipo write FTipo;
    property Colore: String read FColore write FColore;
    property Verso: String read FVerso write FVerso;
    property NumeroZampe: Integer read FNumeroZampe write FNumeroZampe;
  end;

implementation

(* {$R *.dfm}  da togliere se chiamato da altri *)
{ TAnimale }
constructor TAnimale.Create(const ATipo: String; const AColore: String;
  const AVerso: String; const ANumeroZampe: Integer);
begin
  FTipo := ATipo;
  FColore := AColore;
  FVerso := AVerso;
  FNumeroZampe := ANumeroZampe;
end;

function TAnimale.AlzaUnaZampa: String;
begin
  result := 'Se prima mi dici che animale sono, forse lo faccio';
end;

function TAnimale.CambiaColore(): String;
begin
  result := 'Non conosco il mio colore perchè sono un animale generico';
end;

function TAnimale.FaiVerso: String;
begin
  result := 'L''animale generico che verso fa?';
end;

end.
