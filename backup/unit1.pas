unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Bt_07: TButton;
    Bt_00: TButton;
    Button11: TButton;
    ButtonVirgula: TButton;
    ButtonDiv: TButton;
    ButtonMult: TButton;
    ButtonSub: TButton;
    ButtonSum: TButton;
    Button17: TButton;
    clearButton: TButton;
    Button19: TButton;
    Bt_08: TButton;
    ButtonEqual: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Bt_09: TButton;
    Bt_04: TButton;
    Bt_05: TButton;
    Bt_06: TButton;
    Bt_01: TButton;
    Bt_02: TButton;
    Bt_03: TButton;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    txtDisplay: TEdit;
    Edit2: TEdit;
    richText: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuPrincipal: TMainMenu;
    procedure Bt_00Click(Sender: TObject);
    procedure Bt_01Click(Sender: TObject);
    procedure Bt_02Click(Sender: TObject);
    procedure Bt_03Click(Sender: TObject);
    procedure Bt_04Click(Sender: TObject);
    procedure Bt_05Click(Sender: TObject);
    procedure Bt_06Click(Sender: TObject);
    procedure Bt_07Click(Sender: TObject);
    procedure Bt_08Click(Sender: TObject);
    procedure Bt_09Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure ButtonEqualClick(Sender: TObject);
    procedure ButtonVirgulaClick(Sender: TObject);
    procedure ButtonDivClick(Sender: TObject);
    procedure ButtonMultClick(Sender: TObject);
    procedure ButtonSubClick(Sender: TObject);
    procedure ButtonSumClick(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure clearButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure richTextEnter(Sender: TObject);
  private
    FirstNumber, SecNumber, result : String;
    Operators : Char;
    YY,MM,DD : Word;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  //aqui havera sobre sua licença
  ShowMessage('Teste licença');
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  //aqui havera sobre o software
  ShowMessage('Teste software');
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
  var filename : string;
begin
  //função para exportar o conteudo do richText para txt
  filename := 'teste.txt';
  richText.Lines.SaveToFile(filename);

  ShowMessage('Exportado com sucesso o '+ filename);

end;

procedure TForm1.richTextEnter(Sender: TObject);
begin

end;


procedure TForm1.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm1.clearButtonClick(Sender: TObject);
var fn,sn : string;
begin
  //botao limpar
  txtDisplay.Text:= '0';
  fn := FirstNumber;
  sn := SecNumber;

  fn := '';
  sn := '';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DeCodeDate (Date,YY,MM,DD);
  richText.Lines.Clear;
  richText.Lines.Add('Data atual: ' + format('%d/%d/%d ',[dd,mm,yy]));
  richText.Lines.Add('=============================');
end;

procedure TForm1.Bt_07Click(Sender: TObject);
begin
     //botao 7
      if txtDisplay.Text = '0' then
      txtDisplay.Text :='7'
      else
          txtDisplay.Text := txtDisplay.Text + '7';
end;

procedure TForm1.Bt_04Click(Sender: TObject);
begin
  //botao 4
      if txtDisplay.Text = '0' then
      txtDisplay.Text :='4'
      else
          txtDisplay.Text := txtDisplay.Text + '4';
end;

procedure TForm1.Bt_01Click(Sender: TObject);
begin
  //botao 1
      if txtDisplay.Text = '0' then
      txtDisplay.Text :='1'
      else
          txtDisplay.Text := txtDisplay.Text + '1';
end;

procedure TForm1.Bt_00Click(Sender: TObject);
begin
  //botao 0
      if txtDisplay.Text = '0' then
      txtDisplay.Text :='0'
      else
          txtDisplay.Text := txtDisplay.Text + '0';
end;

procedure TForm1.Bt_02Click(Sender: TObject);
begin
  //botao 2
      if txtDisplay.Text = '0' then
      txtDisplay.Text :='2'
      else
          txtDisplay.Text := txtDisplay.Text + '2';
end;

procedure TForm1.Bt_03Click(Sender: TObject);
begin
  //botao 3
      if txtDisplay.Text = '0' then
      txtDisplay.Text :='3'
      else
          txtDisplay.Text := txtDisplay.Text + '3';
end;

procedure TForm1.Bt_05Click(Sender: TObject);
begin
  //botao 5
      if txtDisplay.Text = '0' then
      txtDisplay.Text :='5'
      else
          txtDisplay.Text := txtDisplay.Text + '5';
end;

procedure TForm1.Bt_06Click(Sender: TObject);
begin
  //botao 6
      if txtDisplay.Text = '0' then
      txtDisplay.Text :='6'
      else
          txtDisplay.Text := txtDisplay.Text + '6';
end;

procedure TForm1.Bt_08Click(Sender: TObject);
begin
     //botao 8
      if txtDisplay.Text = '0' then
      txtDisplay.Text :='8'
      else
          txtDisplay.Text := txtDisplay.Text + '8';
end;

procedure TForm1.Bt_09Click(Sender: TObject);
begin
  //botao 9
      if txtDisplay.Text = '0' then
      txtDisplay.Text :='9'
      else
          txtDisplay.Text := txtDisplay.Text + '9';
end;

procedure TForm1.Button11Click(Sender: TObject);
  var pM:real;
begin
  //pmc -/+
  pM := StrToFloat(txtDisplay.Text);
  txtDisplay.Text := FloatToStr(-1 *pM);
end;

procedure TForm1.ButtonEqualClick(Sender: TObject);
begin
   // botao igual
  SecNumber := txtDisplay.Text;

  case(Operators) of
  '+':
    result := FloatToStr(StrToFloat(FirstNumber) + StrToFloat(SecNumber));

  '-':
    result := FloatToStr(StrToFloat(FirstNumber) - StrToFloat(SecNumber));

  'X':
    result := FloatToStr(StrToFloat(FirstNumber) * StrToFloat(SecNumber));

  '/':
    result := FloatToStr(StrToFloat(FirstNumber) / StrToFloat(SecNumber));

  end;
      richText.Lines.Add(FirstNumber +' '+ Operators +' '+ SecNumber + '= ' + result);
      txtDisplay.Text := '';
end;

procedure TForm1.ButtonVirgulaClick(Sender: TObject);
begin
  //virgula
  if (POS(',', txtDisplay.Text)<>0) then
  exit
  else
      txtDisplay.Text := txtDisplay.Text + ButtonVirgula.Caption;

end;

procedure TForm1.ButtonDivClick(Sender: TObject);
begin
  //divisao
   FirstNumber := txtDisplay.Text;
     Operators := '/';
     txtDisplay.Text := '';
end;

procedure TForm1.ButtonMultClick(Sender: TObject);
begin
     //multiplicação
   FirstNumber := txtDisplay.Text;
     Operators := 'X';
     txtDisplay.Text := '';
end;

procedure TForm1.ButtonSubClick(Sender: TObject);
begin
     //subtração
   FirstNumber := txtDisplay.Text;
     Operators := '-';
     txtDisplay.Text := '';
end;

procedure TForm1.ButtonSumClick(Sender: TObject);
begin
     //adição
     FirstNumber := txtDisplay.Text;
     Operators := '+';
     txtDisplay.Text := '';
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  //botao backspace
   txtDisplay.Text := copy(txtDisplay.Text,1,length(txtDisplay.Text)-1);
      if txtDisplay.Text = '' then
         txtDisplay.Text := '0';
end;

end.

