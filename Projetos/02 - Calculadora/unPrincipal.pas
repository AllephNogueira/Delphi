unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btnSomar: TButton;
    textNumero1: TEdit;
    btnSubtracao: TButton;
    btnMultiplicacao: TButton;
    btnDivisao: TButton;
    textNumero2: TEdit;
    Label2: TLabel;
    textResultado: TEdit;
    Label3: TLabel;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtracaoClick(Sender: TObject);
    procedure btnMultiplicacaoClick(Sender: TObject);
    procedure btnDivisaoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  numero1, numero2, resultado: Integer;
  resultadoD: Real;


implementation

{$R *.dfm}



procedure TForm1.btnSomarClick(Sender: TObject);
var        {Aqui s�o declarada as variaveis locais}
  num1, num2, resultado: Integer;

  {Tipos de variaveis
    numeros: Integer, Raal
    Boolean: Tipos logicos / verdadeiro/falso
    String: Textos
    Char: Armazenar apenas um caractere}
begin
  {num1 = Variavel
    :=  Atribuicao
    textNumero1 = meu campo de texto
    .Text = o tipo de dado que vamos passar para a variavel
    **** Observa��o podemos acessar qualquer propriedade, mas vamos acessar a o Text}

    {mas se voc� reparar o num1 � do tipo: Integer, e nao queremos texto e sim numeros
    Ent�o vamos converter para numero }

  //num1 := textNumero1.Text;
  // Repara a gente convertendo agora

          // String para Int
          // StrToInt � uma fun�ao que vai receber o textNumero1 como parametro
          // Ela converte de String para inteiro (StrToInt)
  num1 := StrToInt(textNumero1.Text);      // Convertendo para Int
  num2 := StrToInt(textNumero2.Text);      // Convertendo para Int
  resultado := num1 + num2;                // Somando os valores e jogando para Resultado
  textResultado.Text := resultado.ToString;// Atribuindo o valor e convertendo para Texto com ToString

end;


procedure TForm1.btnSubtracaoClick(Sender: TObject);
begin
    numero1 := StrToInt(textNumero1.Text);
    numero2 := StrToInt(textNumero2.Text);

    resultado := numero1 - numero2;
    textResultado.Text := resultado.ToString;
end;


procedure TForm1.btnMultiplicacaoClick(Sender: TObject);
begin
    numero1 := StrToInt(textNumero1.Text);
    numero2 := StrToInt(textNumero2.Text);

    resultado := numero1 * numero2;
    textResultado.Text := resultado.ToString;
end;


procedure TForm1.btnDivisaoClick(Sender: TObject);
begin
    numero1 := StrToInt(textNumero1.Text);
    numero2 := StrToInt(textNumero2.Text);




    if numero2 <> 0 then
    begin
      {Se numero for menor ou maior que 0 ele faz o calculo}
      resultadoD := numero1 / numero2;

      {Converte o resultado para Float (Real) }
      textResultado.Text := FloatToStr(resultadoD);
    end
    else
      ShowMessage('Numero n�o pode ser divisivel por 0')

end;

end.
